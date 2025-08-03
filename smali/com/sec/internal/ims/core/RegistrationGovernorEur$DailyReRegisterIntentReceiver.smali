.class Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RegistrationGovernorEur.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationGovernorEur;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorEur;)V
    .locals 0

    .line 1250
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorEur;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorEur;Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorEur;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1253
    const-string p1, "com.samsung.intent.ACTION_CHECK_REGISTRATION_DAILY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1254
    const-string p1, "DailyReRegisterIntentReceiver : CHECK_REGISTRATION_DAILY received"

    const-string p2, "RegiGvnEur"

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorEur;

    iget-object v0, p1, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget p1, p1, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result p1

    .line 1257
    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1258
    const-string p1, "DailyReRegisterIntentReceiver : NETWORK_TYPE_LTE/NR"

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorEur;

    iget-object p1, p1, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1262
    const-string p1, "DailyReRegisterIntentReceiver : state not REGISTERED, proceeding with initial registration"

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorEur;

    iget-object p2, p1, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p1, p1, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorEur;

    iget-object v0, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-interface {p2, p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1264
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorEur;

    iget-object p1, p1, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1265
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorEur;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->releaseThrottle(I)V

    .line 1266
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorEur;

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p0

    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->DAILYREREGISTER:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(ILcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    goto :goto_0

    .line 1267
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorEur;

    iget-boolean p1, p1, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHasVoLteCall:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 1269
    const-string p1, "DailyReRegisterIntentReceiver : state REGISTERED, proceeding with re-register message"

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorEur;

    iget-object p1, p1, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setHasForcedPendingUpdate(Z)V

    .line 1271
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorEur;

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->addPendingUpdateRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V

    goto :goto_0

    .line 1276
    :cond_1
    const-string p1, "DailyReRegisterIntentReceiver : state REGISTERED, but call active - postponing re-registration until call ended"

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur$DailyReRegisterIntentReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorEur;

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorEur;->mHasPendingReRegistration:Z

    :cond_2
    :goto_0
    return-void
.end method
