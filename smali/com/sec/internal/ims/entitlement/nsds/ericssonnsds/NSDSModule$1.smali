.class Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$1;
.super Ljava/lang/Object;
.source "NSDSModule.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 148
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnSharedPreferenceChangeListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " changed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string p1, "device_state"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 150
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$mqueuePushTokenUpdateIf(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V

    goto/16 :goto_0

    .line 151
    :cond_0
    const-string/jumbo p1, "sent_token_to_server"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 152
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetmBaseFlowImpl(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isGcmTokenSentToServer(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 153
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTokenSent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 155
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$mupdateGcmPushTokenInDb(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V

    .line 156
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$mqueuePushTokenUpdateIf(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V

    .line 158
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetmSimManager(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    const-string v0, "com.sec.vsim.ericssonnsds.REFRESH_TOKEN"

    invoke-static {p1, p2, v0}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->stopTimer(Landroid/content/Context;ILjava/lang/String;)V

    .line 159
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "RefrehTokenTimer stopped"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :cond_1
    const-string/jumbo p1, "service_provision_state"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 162
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetmBaseFlowImpl(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    move-result-object p2

    .line 163
    invoke-virtual {p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    .line 162
    invoke-static {p1, p2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isVoWifiServiceProvisioned(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 164
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSvcProvCompleted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 166
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$mscheduleServiceProvisionCheckTimer(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V

    goto :goto_0

    .line 168
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetmSimManager(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p0

    const-string p2, "com.sec.vsim.ericssonnsds.SVC_PROVISION_CHECK_TIMEOUT"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->stopTimer(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_3
    const-string p1, "activate_after_oos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 171
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetmBaseFlowImpl(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 173
    const-string/jumbo p2, "retry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 174
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "[ATT_AutoOn] AUTOON_RETRY"

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetmWfcAutoOnRetryCount(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$mscheduleRetryWFCAutoOnTimer(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;I)V

    .line 176
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetmWfcAutoOnRetryCount(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fputmWfcAutoOnRetryCount(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;I)V

    :cond_4
    :goto_0
    return-void
.end method
