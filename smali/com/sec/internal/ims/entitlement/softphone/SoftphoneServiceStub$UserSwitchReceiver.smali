.class Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$UserSwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SoftphoneServiceStub.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$UserSwitchReceiver;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$UserSwitchReceiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$UserSwitchReceiver;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 136
    sget-object p1, Lcom/sec/ims/extensions/Extensions$Intent;->ACTION_USER_SWITCHED:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result p1

    .line 138
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$UserSwitchReceiver;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    iget-object p2, p2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserSwitchReceiver(): newUserId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 139
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$UserSwitchReceiver;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->-$$Nest$monUserSwitched(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;I)V

    :cond_0
    return-void
.end method
