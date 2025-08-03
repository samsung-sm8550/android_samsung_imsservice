.class Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation$1;
.super Ljava/lang/Object;
.source "SIMDeviceImplicitActivation.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 65
    const-string/jumbo p1, "sent_token_to_server"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;

    iget-object p2, p1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 67
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-static {p2, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isGcmTokenSentToServer(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 68
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PREF_SENT_TOKEN_TO_SERVER: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;

    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->-$$Nest$mresumeSimDeviceActivation(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;)V

    :cond_0
    return-void
.end method
