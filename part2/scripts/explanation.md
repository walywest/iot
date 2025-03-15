Let’s see what each line does.

    minReadySeconds, on line 1, tells Kubernetes to wait for 20 seconds after updating each replica. This means Kubernetes will update the first replica, wait 20 seconds, update the second replica, wait 20 seconds, and then update the third, and so on. Inserting waits like this gives us a chance to run tests and make sure the new replicas are working as expected. In the real world, we’ll wait longer than 20 seconds between replica updates. Also, Kubernetes doesn’t actually update replicas. It deletes existing replicas and replaces them with brand-new ones running the new version.

    Lines 2 and 3 force Kubernetes to use the RollingUpdate strategy when performing the update. This defaults to updating one replica at a time and is different from the recreate strategy that deletes and replaces all Pods in one go.

    Lines 5 and 6 force Kubernetes to update one Pod at a time as follows:

        maxSurge=1 gives Kubernetes permission to add one extra Pod during the rollout process. In our case, the desired state is five Pods, so this setting allows the rollout to temporarily surge to six Pods.

        maxUnavailable=0 on line 6 prevents the update from going below five Pods. 

When combined, lines 5 and 6 force Kubernetes to add a sixth replica with the new version and then delete an existing replica running the old version. This process repeats until all five Pods are running the desired version.
