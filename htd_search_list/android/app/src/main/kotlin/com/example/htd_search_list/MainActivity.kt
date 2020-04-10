package com.example.htd_search_list

import android.content.Context
import android.content.pm.PackageManager
import android.util.Log
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant


class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {

       //checkSignature(this.context);
       // checkLuckyPatcher();

        GeneratedPluginRegistrant.registerWith(flutterEngine);

    }

    private fun checkSignature(context: Context)
    {
        Log.d("TAG", "message")
        try
        {
            val signatures = context.packageManager.getPackageInfo(context.packageName, PackageManager.GET_SIGNATURES).signatures;
            Log.d("TAG", signatures[0].toCharsString())
            if (signatures[0].toCharsString() != "308202e2308201ca020101300d06092a864886f70d010105050030373116301406035504030c0d416e64726f69642044656275673110300e060355040a0c07416e64726f6964310b3009060355040613025553301e170d3230303130353031343635375a170d3439313232383031343635375a30373116301406035504030c0d416e64726f69642044656275673110300e060355040a0c07416e64726f6964310b300906035504061302555330820122300d06092a864886f70d01010105000382010f003082010a0282010100dca0998f4cea19d28246f5a687eea5df5259857d925f644a6d88d18a833ecd06cf0dc54695e8ff5c819b529cad2f0bce2603bbfdc4bd002de2fa94dadc323fa77b51409141d6c093cb9997c468919e74658792e24ce4bcbe7cde119792b49ee92798e9160afc4cac574af2a7f14f6bb983885e54d4eabd055cd7b6e419e814f56aa03fab90a599ee71cc3cef2507e76e86f062f2d7f8b36caca9c72fb38a53653ead150146c6edf5a02cf460926131cd46d35a0a22fb467ea6afafb239029d658b36d281d4ba542f5763a8ea0f3e80a9af52044cc3cf5602b514b625dab8cff45a362192d8ced14497bac758196036be089322cb0a4208488c0bacce27b4522f0203010001300d06092a864886f70d0101050500038201010062360c483544d297b7b1a9faee957c05eb4ce355fccce2ef162fd8ae749d74caee463f3a6c00590069744d773b231a63ee4ef96dbdc35bfc4d085b04dd4b4e4b30e8d93b845abb5e4faf8deff9b9c244efaea876fcf2a4b511827c1e2159abc19339685a875d13b2a296ea3ee6bfd2f7eecf60922a17f9354f7526c0bbce4b6562d2f0614f0680a348618e1e2b81be0dd9a17377b610f914dbae57ed9ec5bd42947c44145cc810c951a5c2739f35a4bfc660dcb56f9ce7f0c872a264b21bae04509370788d7c3f80d1bd2ddc0c7b1e969b9a9ca63b9998e589203bb7c14adcdd4fe6bfa5ea3bbdf279708d645dc615b23b87c3f734877d4dc99c72a06b23999a")
            {
                // Kill the process without warning. If someone changed the certificate
                // is better not to give a hint about why the app stopped working
                android.os.Process.killProcess(android.os.Process.myPid());
            }
        }
        catch (ex: PackageManager.NameNotFoundException)
        {
            // Must never fail, so if it does, means someone played with the apk, so kill the process
            android.os.Process.killProcess(android.os.Process.myPid());
        }
    }

    private fun checkLuckyPatcher(): Boolean {
        if (packageExists("com.dimonvideo.luckypatcher")) {
            return true
        }
        if (packageExists("com.chelpus.lackypatch")) {
            return true
        }
        return if (packageExists("com.android.vending.billing.InAppBillingService.LACK")) {
            true
        } else false
    }

    private fun packageExists(packageName: String): Boolean {
        try {
            val info = this.packageManager.getApplicationInfo(packageName, 0)
                    ?: // No need really to test for null, if the package does not
                    // exist it will really rise an exception. but in case Google
                    // changes the API in the future lets be safe and test it
                    return false
            return true
        } catch (ex: Exception) {
            // If we get here only means the Package does not exist
        }
        return false
    }
}

