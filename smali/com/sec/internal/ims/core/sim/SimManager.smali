.class public Lcom/sec/internal/ims/core/sim/SimManager;
.super Landroid/os/Handler;
.source "SimManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISimManager;


# static fields
.field protected static final EVENT_IMSSWITCH_UPDATED:I = 0x7

.field protected static final EVENT_LOAD_MNOMAP:I = 0x8

.field protected static final EVENT_SIM_REFRESH:I = 0x3

.field protected static final EVENT_SIM_STATE_CHANGED:I = 0x1

.field protected static final EVENT_SOFTPHONE_AUTH_FAILED:I = 0x5

.field protected static final EVENT_UICC_CHANGED:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "SimManager"

.field private static final SMF_MNONAME_PROP:Ljava/lang/String; = "sys.smf.mnoname"

.field protected static final SOFTPHONE_OPERATOR_CODE:Ljava/lang/String; = "310999"

.field static final URI_UPDATE_GLOBAL:Landroid/net/Uri;

.field static final URI_UPDATE_MNO:Landroid/net/Uri;

.field private static final sInteractAcrossUsersFullPermission:Ljava/lang/String; = "android.permission.INTERACT_ACROSS_USERS_FULL"


# instance fields
.field OMCNW_CODE:Ljava/lang/String;

.field OMC_CODE:Ljava/lang/String;

.field final mAkaEventReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field mDevMno:Lcom/sec/internal/constants/Mno;

.field private final mEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimEventListener;",
            ">;"
        }
    .end annotation
.end field

.field mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field final mGtsAppInstallReceiver:Landroid/content/BroadcastReceiver;

.field private mHighestPriorityEhplmn:Ljava/lang/String;

.field protected mImsServiceSwitchObserver:Landroid/database/ContentObserver;

.field private mImsi:Ljava/lang/String;

.field mImsiFromImpi:Ljava/lang/String;

.field mIsCrashSimEvent:Z

.field protected mIsESim:Z

.field private mIsGtsAppInstalled:Z

.field private mIsOutBoundSIM:Z

.field private mIsRefresh:Z

.field protected mIsimLoaded:Z

.field mLabSimCard:Z

.field private mLastImsi:Ljava/lang/String;

.field mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

.field mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

.field mNetMno:Lcom/sec/internal/constants/Mno;

.field mOperatorFromImpi:Ljava/lang/String;

.field mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

.field mSimIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSimMnoName:Ljava/lang/String;

.field protected final mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mSimRefreshRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mSimRemovedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mSimSlot:I

.field mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

.field protected mSimStateChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

.field mSoftphoneAccount:Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

.field mSubscriptionId:I

.field mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field protected final mUiccChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected notifySimReadyAlreadyDone:Z


# direct methods
.method public static synthetic $r8$lambda$BSL_CvcU9wTl7iWBb7kcmgt7dVM(Lcom/sec/internal/ims/core/sim/SimManager;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->lambda$getDerivedImpuFromMsisdn$2()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DxlRrwgel_DnXolQZmPhhoIaRNA(Lcom/sec/internal/ims/core/sim/SimManager;Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->lambda$getDerivedImpi$3(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Jr2K7WnOmHGiUmLqnDAvKk1iLnk(Landroid/content/ContentValues;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->lambda$onImsSwitchUpdated$0(Landroid/content/ContentValues;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ur9OyCPPw2SkhGv8SYVdvQCB2bU(Lcom/sec/internal/ims/core/sim/SimManager;[Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->lambda$dump$7([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X-FsbQv19Rtl35tSqQpsCEmPkrc(Lcom/sec/internal/ims/core/sim/SimManager;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->lambda$getImpuFromSim$6()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YOeNMOLAEPelnQ4voIgTLY_6Cik(Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->lambda$getEfImpuList$5(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ciO-F4G0Ras5sKiWWl2ahzNiBI0(Lcom/sec/internal/ims/core/sim/SimManager;Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->lambda$getDerivedImpu$4(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$srjltpeCjQKdxNbHMuPyKvsJx7k(Lcom/sec/internal/ims/core/sim/SimManager;Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->lambda$getDerivedImpuFromMsisdn$1(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSimSlot(Lcom/sec/internal/ims/core/sim/SimManager;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 116
    const-string v0, "content://com.sec.ims.settings/mno"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimManager;->URI_UPDATE_MNO:Landroid/net/Uri;

    .line 117
    const-string v0, "content://com.sec.ims.settings/global"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimManager;->URI_UPDATE_GLOBAL:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;ILandroid/telephony/SubscriptionInfo;Lcom/sec/internal/helper/os/ITelephonyManager;)V
    .locals 3

    .line 234
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, -0x1

    .line 90
    iput p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    const/4 p1, 0x0

    .line 91
    iput p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    .line 93
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLastImsi:Ljava/lang/String;

    .line 94
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    .line 95
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    .line 96
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mHighestPriorityEhplmn:Ljava/lang/String;

    .line 124
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    .line 125
    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsi:Ljava/lang/String;

    .line 128
    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 129
    iput-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    .line 130
    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    .line 132
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    .line 133
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    .line 134
    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 135
    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 136
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 137
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    .line 138
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsGtsAppInstalled:Z

    .line 140
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 141
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mUiccChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 142
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRefreshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 143
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRemovedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 144
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStateChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 146
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsServiceSwitchObserver:Landroid/database/ContentObserver;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    .line 150
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManager$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/sim/SimManager$1;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 184
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManager$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/sim/SimManager$2;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mGtsAppInstallReceiver:Landroid/content/BroadcastReceiver;

    .line 215
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManager$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/sim/SimManager$3;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mAkaEventReceiver:Landroid/content/BroadcastReceiver;

    .line 235
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    const/16 v1, 0x12c

    const-string v2, "SimManager"

    invoke-direct {v0, p2, p3, v2, v1}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 237
    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    .line 238
    iput p3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    .line 239
    iput-object p5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 241
    new-instance p2, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-direct {p2}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    .line 243
    iget p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "subId: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ", info: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p2, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p4, :cond_0

    .line 245
    invoke-virtual {p4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2

    iput p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 246
    invoke-virtual {p0, p4}, Lcom/sec/internal/ims/core/sim/SimManager;->setSubscriptionInfo(Landroid/telephony/SubscriptionInfo;)V

    .line 250
    :cond_0
    const-string/jumbo p2, "ro.csc.sales_code"

    const-string/jumbo p3, "unknown"

    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    .line 252
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 253
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {p2}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 256
    :cond_1
    iget p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p2}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    .line 257
    invoke-static {p2}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    .line 258
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "OMC_CODE(create): "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ", mDevMno: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p5}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 259
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "OMCNW_CODE(create): "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ", mNetMno: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p5}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 261
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 262
    new-instance p2, Lcom/sec/internal/ims/core/sim/SimManager$ImsServiceSwitchObserver;

    invoke-direct {p2, p0, p0}, Lcom/sec/internal/ims/core/sim/SimManager$ImsServiceSwitchObserver;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsServiceSwitchObserver:Landroid/database/ContentObserver;

    .line 263
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->IMS_SWITCHES:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object p3

    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsServiceSwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {p2, p3, p1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private handleSubscriptionInfoFailure(Ljava/lang/String;)V
    .locals 3

    .line 964
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSimStateChange:[LOADED], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " subInfo is not created yet. retry in 1 sec."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x10000002

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 966
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasVsim()Z

    move-result p1

    if-nez p1, :cond_0

    .line 967
    sget-object p1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    :cond_0
    const/4 p1, 0x1

    .line 969
    const-string v0, "LOADED"

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private isValidAkaResponse(Ljava/lang/String;)Z
    .locals 3

    .line 730
    const-string v0, "2wQAAAAAAAA="

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x10000021

    if-eqz v0, :cond_0

    .line 731
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", failed to challenge"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return v1

    .line 733
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "null"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 734
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", empty response"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return v1
.end method

.method public static isValidImpu(Ljava/lang/String;)Z
    .locals 2

    .line 708
    invoke-static {p0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 709
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 713
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid IMPU: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/log/LogRedactor;->IMPU:Lcom/sec/internal/log/LogRedactor;

    invoke-virtual {v1, p0}, Lcom/sec/internal/log/LogRedactor;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SimManager"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$dump$7([Ljava/lang/String;)V
    .locals 4

    .line 1886
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMPUs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/log/LogRedactor;->IMPU:Lcom/sec/internal/log/LogRedactor;

    .line 1887
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/log/LogRedactor;)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    const-string v1, "["

    const-string v2, "]"

    .line 1888
    const-string v3, ", "

    invoke-static {v3, v1, v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1886
    const-string v0, "SimManager"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getDerivedImpi$3(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;
    .locals 0

    .line 1759
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->fetchDerivedImpi(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDerivedImpu$4(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;
    .locals 0

    .line 1781
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->fetchDerivedImpu(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDerivedImpuFromMsisdn$1(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;
    .locals 0

    .line 1732
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->fetchDerivedImpuFromMsisdn(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDerivedImpuFromMsisdn$2()Ljava/lang/String;
    .locals 3

    .line 1734
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDerivedImpi: operator is invalid. operator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SimManager"

    invoke-static {v1, v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1736
    const-string p0, "111@example.com"

    return-object p0
.end method

.method private static synthetic lambda$getEfImpuList$5(Ljava/lang/String;)Z
    .locals 0

    .line 1790
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$getImpuFromSim$6()Ljava/lang/String;
    .locals 2

    .line 1797
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDerivedImpuFromMsisdn()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static synthetic lambda$onImsSwitchUpdated$0(Landroid/content/ContentValues;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 300
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method private notifySimRefresh()V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRefreshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private notifySimRemoved()V
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRemovedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method checkOutBoundSIM()Z
    .locals 3

    .line 528
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasNoSim()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SimManager"

    if-eqz v0, :cond_0

    .line 529
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "isOutboundSim, SIM not ready"

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isLabSimCard()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 539
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isUnifiedSalesCodeInTSS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/helper/os/DeviceUtil;->includedSimByTSS(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 544
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getNetworkNames()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    return p0

    .line 534
    :cond_3
    :goto_0
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "isOutboundSim, GCF mode, LabSim card/ Test Bed SIM inserted."

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method public deRegisterSimCardEventListener(Lcom/sec/internal/interfaces/ims/core/ISimEventListener;)V
    .locals 1

    .line 1687
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 1688
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1689
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public deregisterForSimReady(Landroid/os/Handler;)V
    .locals 0

    .line 406
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public deregisterForSimRefresh(Landroid/os/Handler;)V
    .locals 0

    .line 460
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRefreshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public deregisterForSimRemoved(Landroid/os/Handler;)V
    .locals 0

    .line 474
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRemovedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public deregisterForSimStateChanged(Landroid/os/Handler;)V
    .locals 0

    .line 491
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStateChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public dump()V
    .locals 6

    .line 1862
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1863
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1864
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "subID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1865
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimStatePrev: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1866
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1867
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsimLoaded: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1868
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsOutBound: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1869
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsESim: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsESim:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1871
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-eqz v0, :cond_0

    .line 1872
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimDataAdaptor : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1874
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-eqz v0, :cond_1

    .line 1875
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    .line 1876
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPrimaryImei()Ljava/lang/String;

    move-result-object v1

    .line 1877
    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMEI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/sec/internal/log/LogRedactor;->IMEI:Lcom/sec/internal/log/LogRedactor;

    invoke-virtual {v5, v0}, Lcom/sec/internal/log/LogRedactor;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(isPrimary: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1878
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1877
    invoke-static {v2, v3, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1880
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operator: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-interface {v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1881
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSISDN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/internal/log/LogRedactor;->MSISDN:Lcom/sec/internal/log/LogRedactor;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/internal/helper/os/ITelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/log/LogRedactor;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1882
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMSI: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/internal/log/LogRedactor;->IMSI:Lcom/sec/internal/log/LogRedactor;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-interface {v4, v5}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/log/LogRedactor;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1883
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISIM DOMAIN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/internal/log/LogRedactor;->DOMAIN:Lcom/sec/internal/log/LogRedactor;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-interface {v4, v5}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/log/LogRedactor;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1884
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMPI: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/internal/log/LogRedactor;->IMPI:Lcom/sec/internal/log/LogRedactor;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-interface {v4, v5}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/log/LogRedactor;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 1885
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda6;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1890
    :cond_1
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 1893
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1894
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/MnoMap;->dump()V

    return-void
.end method

.method public getDerivedImpi()Ljava/lang/String;
    .locals 3

    .line 1745
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "getDerivedImpi:"

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1747
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-nez v0, :cond_0

    .line 1748
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory;->create(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    .line 1751
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1752
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1758
    :cond_1
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->parseMccMnc(ILjava/lang/String;)Lcom/sec/internal/ims/core/sim/Plmn;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda7;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;Ljava/lang/String;)V

    .line 1759
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    .line 1760
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 1753
    :cond_2
    :goto_0
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "getDerivedImpi: IMSI is not found. Using [sip:111@example.com]"

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1755
    const-string p0, "111@example.com"

    return-object p0
.end method

.method public getDerivedImpu()Ljava/lang/String;
    .locals 4

    .line 1768
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "getDerivedImpu:"

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1770
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-nez v0, :cond_0

    .line 1771
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory;->create(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    .line 1774
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1775
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1780
    :cond_1
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->parseMccMnc(ILjava/lang/String;)Lcom/sec/internal/ims/core/sim/Plmn;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;Ljava/lang/String;)V

    .line 1781
    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 1782
    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 1776
    :cond_2
    :goto_0
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "getDerivedImpu: IMSI is not found."

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1
.end method

.method public getDerivedImpuFromMsisdn()Ljava/lang/String;
    .locals 3

    .line 1719
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "getDerivedImpuFromMsisdn:"

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1721
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-nez v0, :cond_0

    .line 1722
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory;->create(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    .line 1725
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 1726
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1727
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "getDerivedImpuFromMsisdn: msisdn is not found"

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1731
    :cond_1
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->parseMccMnc(ILjava/lang/String;)Lcom/sec/internal/ims/core/sim/Plmn;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;Ljava/lang/String;)V

    .line 1732
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda5;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    .line 1733
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDevMno()Lcom/sec/internal/constants/Mno;
    .locals 0

    .line 1831
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    return-object p0
.end method

.method public getEfImpuList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1787
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 1788
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1789
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 1787
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda8;-><init>()V

    .line 1790
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1791
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getEmergencyImpu()Ljava/lang/String;
    .locals 3

    .line 1803
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-nez v0, :cond_0

    .line 1804
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory;->create(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    .line 1807
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getEfImpuList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getEmergencyImpu(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 1808
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    if-nez v0, :cond_4

    .line 1811
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasNoSim()Z

    move-result v0

    const-string/jumbo v2, "sip:anonymous@anonymous.invalid"

    if-eqz v0, :cond_1

    :goto_0
    move-object v0, v2

    goto :goto_1

    .line 1813
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v1, v0, :cond_2

    .line 1815
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDerivedImpuFromMsisdn()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 1819
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne v1, v0, :cond_3

    goto :goto_0

    .line 1822
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public getGid1()Ljava/lang/String;
    .locals 1

    .line 1661
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getGtsAppInstalled()Z
    .locals 0

    .line 1917
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsGtsAppInstalled:Z

    return p0
.end method

.method public getHighestPriorityEhplmn()Ljava/lang/String;
    .locals 0

    .line 1611
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mHighestPriorityEhplmn:Ljava/lang/String;

    return-object p0
.end method

.method getISimDataValidity()I
    .locals 8

    .line 671
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v0

    .line 672
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v1

    .line 673
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object v2

    .line 676
    invoke-static {v2}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "isIsimDataValid: "

    const-string v5, "SimManager"

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-nez v3, :cond_0

    goto :goto_0

    .line 681
    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getImpuFromList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 684
    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidImpu(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 685
    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->IMPU_INVALID:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->getValue()I

    move-result v3

    .line 686
    iget v6, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v6, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 677
    :cond_2
    :goto_0
    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->IMPU_NOT_EXISTS:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->getValue()I

    move-result v3

    .line 678
    iget v6, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v6, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 690
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 691
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->IMPI_NOT_EXIST:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->getValue()I

    move-result v2

    or-int/2addr v3, v2

    .line 692
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 695
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 696
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mHighestPriorityEhplmn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 697
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "Allow empty EF_HOMEDOMAIN only when the EHPLMN is available"

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_2

    .line 699
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->HOME_DOMAIN_NOT_EXIST:Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/core/SimConstants$ISIM_VALIDITY;->getValue()I

    move-result v1

    or-int/2addr v3, v1

    .line 700
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_5
    :goto_2
    return v3
.end method

.method public getImpi()Ljava/lang/String;
    .locals 1

    .line 1694
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpi(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getImpuFromSim()Ljava/lang/String;
    .locals 2

    .line 1796
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getEfImpuList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getImpuFromList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    .line 1797
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 2

    .line 1651
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 1653
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1654
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsi:Ljava/lang/String;

    .line 1656
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsi:Ljava/lang/String;

    return-object p0
.end method

.method public getImsiFromImpi()Ljava/lang/String;
    .locals 1

    .line 1666
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsiFromImpi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1667
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getImsi()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1669
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsiFromImpi:Ljava/lang/String;

    return-object p0
.end method

.method public getIsimAuthentication(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 721
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 723
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isSimLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 726
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->getIsimAuthentication(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIsimAuthentication(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    .line 744
    const-string v1, "SimManager"

    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 749
    :cond_0
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getIsimAuthentication calling - AppType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 751
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v3

    new-array v2, v2, [B

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    .line 753
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_1

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v5, 0x2

    .line 754
    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x10

    invoke-static {v5, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v6

    move v6, v7

    move v5, v8

    goto :goto_0

    .line 757
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",REQ ISIM AUTH"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v5, 0x10000020

    invoke-static {v5, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 758
    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 759
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v5

    const/16 v6, 0x81

    invoke-interface {v2, v5, p2, v6, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIccAuthentication(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 761
    iget p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "result: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 766
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isLatin()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isATTMexico()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 767
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidAkaResponse(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 768
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIsimAuthentication result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 769
    const-string p0, "mGI="

    return-object p0

    .line 774
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string/jumbo p2, "null"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto/16 :goto_2

    .line 781
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",LEN:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const v0, 0x10000021

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 786
    :try_start_0
    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    new-instance p2, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/2addr v0, v3

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 793
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resultBytes.length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 794
    :goto_1
    array-length p0, p1

    if-ge v4, p0, :cond_5

    .line 796
    aget-byte p0, p1, v4

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0xf

    .line 797
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 798
    aget-byte p0, p1, v4

    and-int/lit8 p0, p0, 0xf

    .line 799
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 801
    :cond_5
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 802
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "decoded result : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p1

    .line 788
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to decode the AKA RESPONSE - retry as MAC ERROR"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 790
    const-string p0, "9862"

    return-object p0

    .line 775
    :cond_6
    :goto_2
    iget p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string p2, "getIccAuthentication failed"

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 776
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 777
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p1

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->updateEmergencyTaskByAuthFailure(I)V

    :cond_7
    return-object v0

    .line 745
    :cond_8
    :goto_3
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong parameter - AppType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " nonce : "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 0

    .line 1640
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 0

    .line 1645
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMnoFromNetworkPlmn(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;
    .locals 0

    .line 1852
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/MnoMap;->getMnoNamesFromNetworkPlmn(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const-string p1, "DEFAULT"

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    return-object p0
.end method

.method public getMnoInfo()Landroid/content/ContentValues;
    .locals 3

    .line 1903
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->getAll()Landroid/content/ContentValues;

    move-result-object p0

    .line 1905
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMnoInfo: Copy failed! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method getMnoNameWithoutGcExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1922
    sget-char p0, Lcom/sec/internal/constants/Mno;->GC_DELIMITER:C

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    .line 1924
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .line 1635
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNetMno()Lcom/sec/internal/constants/Mno;
    .locals 0

    .line 1836
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    return-object p0
.end method

.method public getNetworkNames()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v4

    .line 550
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 551
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isUSA()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v8, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 557
    :goto_1
    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    .line 558
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperatorFromImpi()Ljava/lang/String;

    move-result-object v0

    .line 559
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getImsiFromImpi()Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v2, v0

    move-object v3, v1

    goto :goto_3

    .line 561
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 562
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 565
    :goto_3
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 567
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 568
    invoke-interface {v1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGid2(I)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    .line 567
    invoke-static/range {v2 .. v8}, Lcom/sec/internal/ims/util/CscParser;->getNetworkNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimCountryIsoForSubId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimMno()Lcom/sec/internal/constants/Mno;
    .locals 0

    .line 1847
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    return-object p0
.end method

.method public getSimMnoName()Ljava/lang/String;
    .locals 0

    .line 1857
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    return-object p0
.end method

.method getSimMobilityType(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;)I"
        }
    .end annotation

    .line 1943
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/settings/ImsProfile;

    .line 1944
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getSimMobility()Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v4

    .line 1947
    :cond_1
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getSimMobilityForRcs()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1949
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 1950
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    move v0, v4

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    const/4 v0, 0x2

    :cond_6
    :goto_1
    return v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 3

    .line 615
    invoke-static {}, Lcom/sec/internal/constants/Mno;->getMockOperatorCode()Ljava/lang/String;

    move-result-object v0

    .line 616
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 621
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    const-string p0, "310999"

    return-object p0

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 627
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimOperator: value ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public getSimOperatorFromImpi()Ljava/lang/String;
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mOperatorFromImpi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 637
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mOperatorFromImpi:Ljava/lang/String;

    return-object p0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 0

    .line 1699
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimSlotCount()I
    .locals 0

    .line 1587
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result p0

    return p0
.end method

.method public getSimSlotIndex()I
    .locals 0

    .line 1606
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    return p0
.end method

.method public getSimState()I
    .locals 2

    .line 1704
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-eqz v0, :cond_1

    .line 1705
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimSlotCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1706
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState()I

    move-result p0

    return p0

    .line 1708
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimSlotIndex()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getSimpleEventLog()Lcom/sec/internal/helper/SimpleEventLog;
    .locals 0

    .line 1898
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-object p0
.end method

.method public getSubscriptionId()I
    .locals 1

    .line 1592
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    if-gez v0, :cond_0

    .line 1593
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1595
    :cond_0
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    return p0
.end method

.method public getSubscriptionIdInternal()I
    .locals 2

    .line 1600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSubscriptionIdInternal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1550
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: what "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1552
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 p1, 0x8

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 1571
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    if-nez p1, :cond_6

    .line 1572
    new-instance p1, Lcom/sec/internal/ims/core/sim/MnoMap;

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-direct {p1, v0, v1}, Lcom/sec/internal/ims/core/sim/MnoMap;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    goto :goto_0

    .line 1577
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->onImsSwitchUpdated(I)V

    .line 1578
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->updateGlobalSetting(I)V

    goto :goto_0

    .line 1567
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSoftphoneAuthFailed()V

    goto :goto_0

    .line 1563
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSimRefresh()V

    goto :goto_0

    .line 1559
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifyUiccChanged()V

    goto :goto_0

    .line 1554
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->onSimStateChange(Ljava/lang/String;)V

    .line 1555
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimStateChanged()V

    :cond_6
    :goto_0
    return-void
.end method

.method handleSimStateChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1356
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isSimAvailable()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "SimManager"

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 1357
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v4, "handleSimChange: SIM is ready."

    invoke-static {v2, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1359
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1360
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getImsiFromImpi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLastImsi:Ljava/lang/String;

    goto :goto_0

    .line 1362
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLastImsi:Ljava/lang/String;

    .line 1366
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1367
    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v4

    .line 1369
    iget-object v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iget-boolean v6, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    iget-object v7, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    .line 1370
    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {v5, v6, p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->getEventType(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;ZZ)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1369
    const-string v5, "EVTT"

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1371
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result p1

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v5, "SCID"

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1372
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1373
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v5, 0x10

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v4, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v4, "GID1"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    :cond_1
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v4, "ISIM"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1376
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 1377
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p1, v5, v6}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1376
    const-string v5, "VLTS"

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1378
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    .line 1379
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p1, v4, v5}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1378
    const-string v4, "VILS"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1384
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p1, v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isGBASupported()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1385
    sget-object p1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;->GBA_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;->getValue()I

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v3

    .line 1389
    :goto_1
    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->hasValidMsisdn()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1390
    sget-object v4, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;->MSISDN_INVALID:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;->getValue()I

    move-result v4

    or-int/2addr p1, v4

    .line 1391
    iget v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v5, "Invalid MSISDN"

    invoke-static {v2, v4, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    if-lez p1, :cond_4

    .line 1396
    const-string v5, "SMVL"

    invoke-static {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->intToHexStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    :cond_4
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    if-eqz p1, :cond_5

    .line 1401
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getISimDataValidity()I

    move-result p1

    if-lez p1, :cond_5

    .line 1403
    const-string v5, "ISVL"

    invoke-static {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->intToHexStr(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    iget v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v6, "block_regi_on_invalid_isim"

    invoke-static {v5, v6, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isEsim()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1406
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo v5, "onSimStateChange: invalid ISIM!"

    invoke-static {v2, v1, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1407
    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->INVALID_ISIM:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    .line 1408
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v5, "INVALID_FIELD"

    invoke-virtual {v1, v2, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",INVLD ISIM,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v1, 0x10000005

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1414
    :cond_5
    iget p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    const-string v2, "SIMI"

    invoke-static {p1, v1, v2, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->sendLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1417
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    .line 1418
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    if-eqz v4, :cond_8

    .line 1421
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReady(Ljava/lang/String;)V

    goto :goto_3

    .line 1423
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object p2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne p1, p2, :cond_8

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isISimAppLoaded()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1425
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    if-eqz p1, :cond_7

    .line 1426
    iget p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo p2, "send simstate, isim loaded"

    invoke-static {v2, p1, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1427
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    .line 1428
    const-string p1, "ISIM_LOADED"

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1432
    :cond_7
    const-string p1, "DELAYED_ISIM_LOAD"

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_8
    :goto_3
    return-void
.end method

.method handleSubscriptionId()Z
    .locals 3

    .line 945
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telephony_subscription_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 948
    const-string v0, "NO SUBSERVICE"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->handleSubscriptionInfoFailure(Ljava/lang/String;)V

    return v1

    .line 952
    :cond_0
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 954
    const-string v0, "NO SUBINFO"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->handleSubscriptionInfoFailure(Ljava/lang/String;)V

    return v1

    .line 958
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->notifySubscriptionIdChanged(Landroid/telephony/SubscriptionInfo;)V

    .line 959
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->setSubscriptionInfo(Landroid/telephony/SubscriptionInfo;)V

    const/4 p0, 0x1

    return p0
.end method

.method handleVsim(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 932
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-nez v0, :cond_0

    .line 933
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory;->create(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    .line 934
    iget p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "Enable virtual SIM"

    const-string v1, "SimManager"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 935
    sget-object p2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    const/4 p2, 0x1

    .line 936
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 937
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "VSIM LOADED"

    invoke-virtual {p2, v0}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 938
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReady(Ljava/lang/String;)V

    goto :goto_0

    .line 939
    :cond_0
    const-string p1, "LOADED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 940
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->handleSubscriptionId()Z

    :cond_1
    :goto_0
    return-void
.end method

.method handle_Delayed_IsimLoaded()Z
    .locals 3

    .line 1187
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v0, v1, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v2, "ISIM_LOADED"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 1190
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method handle_IsimLoaded()Z
    .locals 4

    .line 1196
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v2, "ISIM_LOADED"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1197
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1199
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->INVALID_ISIM:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v2, v3, :cond_0

    .line 1201
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    move v0, v1

    .line 1204
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_1

    .line 1206
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v2, "fix for exceptional case : LOADED notified before ISIM_LOADED"

    const-string v3, "SimManager"

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move v0, v1

    .line 1210
    :cond_1
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    return v0
.end method

.method handle_Loaded(Ljava/lang/String;)Z
    .locals 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 974
    iget-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOADED : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const/4 v2, 0x1

    .line 975
    const-string v3, "LOADED"

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 977
    sget-object v4, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 978
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result v5

    if-nez v5, :cond_0

    .line 979
    iget-object v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mLastImsi:Ljava/lang/String;

    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move v4, v2

    .line 983
    :cond_0
    iget-object v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->needHandleLoadedAgain(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v2

    :cond_1
    if-eqz v4, :cond_21

    .line 988
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidOperator(Ljava/lang/String;)Z

    move-result v5

    const-wide/16 v6, 0x3e8

    const-string v8, "SimManager"

    const/4 v9, 0x0

    if-nez v5, :cond_2

    .line 989
    iget v4, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo v5, "onSimStateChange: [LOADED] but operator is invalid. retry in 1 sec."

    invoke-static {v8, v4, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 991
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",INVLD OP:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v4, 0x10000001

    invoke-static {v4, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 992
    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 993
    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v9

    .line 997
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->handleSubscriptionId()Z

    move-result v5

    if-nez v5, :cond_3

    return v9

    .line 1001
    :cond_3
    iget-object v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v10

    invoke-interface {v5, v10}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v5

    .line 1002
    iget-object v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v11

    invoke-interface {v10, v11}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v10

    .line 1003
    iget-object v11, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v12

    invoke-interface {v11, v12}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v11

    .line 1004
    iget-object v12, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v13

    invoke-interface {v12, v13}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v12

    .line 1005
    iget-object v13, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v14

    invoke-interface {v13, v14}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGid2(I)Ljava/lang/String;

    move-result-object v15

    .line 1007
    iget-object v13, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v14, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imsi:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/sec/internal/log/LogRedactor;->IMSI:Lcom/sec/internal/log/LogRedactor;

    invoke-virtual {v6, v5}, Lcom/sec/internal/log/LogRedactor;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " gid1:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " gid2:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " impi:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/sec/internal/log/LogRedactor;->IMPI:Lcom/sec/internal/log/LogRedactor;

    .line 1008
    invoke-virtual {v6, v10}, Lcom/sec/internal/log/LogRedactor;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " spname:"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1007
    invoke-virtual {v13, v14, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1009
    invoke-virtual {v0, v1, v5}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidImsi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1010
    iget v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo v4, "onSimStateChange: [LOADED] but imsi is invalid. retry in 1 sec."

    invoke-static {v8, v1, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",INVLD IMSI,"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_4

    .line 1012
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "null"

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v4, 0x10000003

    .line 1011
    invoke-static {v4, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1014
    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 1015
    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x0

    return v0

    .line 1020
    :cond_5
    const-string/jumbo v3, "ro.csc.sales_code"

    const-string/jumbo v6, "unknown"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    .line 1022
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1023
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 1025
    :cond_6
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OMC_CODE(loaded): "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", mDevMno: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v9}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1027
    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v3}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    .line 1028
    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    .line 1029
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OMCNW_CODE(loaded): "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", mNetMno: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v9}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1031
    const-string v3, "00101"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "CPW"

    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1032
    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v6, "(CPW) & 00101 sim card, Enable GCF mode"

    invoke-static {v8, v3, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1033
    invoke-static {v2}, Lcom/sec/internal/helper/os/DeviceUtil;->setGcfMode(Z)V

    .line 1036
    :cond_7
    const-string v3, ""

    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsiFromImpi:Ljava/lang/String;

    .line 1039
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1040
    sget-object v6, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, v6, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    const/4 v7, 0x0

    const/16 v19, 0x0

    goto/16 :goto_6

    .line 1042
    :cond_8
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    if-nez v3, :cond_9

    .line 1043
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v7, "mnomap is empty"

    invoke-virtual {v3, v6, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1044
    new-instance v3, Lcom/sec/internal/ims/core/sim/MnoMap;

    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-direct {v3, v6, v7}, Lcom/sec/internal/ims/core/sim/MnoMap;-><init>(Landroid/content/Context;I)V

    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    :cond_9
    if-eqz v10, :cond_c

    .line 1047
    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1048
    invoke-static {v10}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->extractMnoFromImpi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1050
    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1051
    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->extractImsiFromImpi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_a
    move-object v6, v5

    .line 1053
    :goto_1
    iget-object v13, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    move-object v14, v3

    move-object v7, v15

    move-object v15, v6

    move-object/from16 v16, v11

    move-object/from16 v17, v7

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Lcom/sec/internal/ims/core/sim/MnoMap;->getMnoName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1054
    invoke-virtual {v0, v9}, Lcom/sec/internal/ims/core/sim/SimManager;->getMnoNameWithoutGcExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v10

    .line 1055
    iget-object v13, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v14, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MnoNameFromImpi: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", SIM Mno: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v14, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1056
    invoke-virtual {v10}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v10}, Lcom/sec/internal/constants/Mno;->isDish()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1057
    :cond_b
    iput-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mOperatorFromImpi:Ljava/lang/String;

    .line 1058
    iput-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mImsiFromImpi:Ljava/lang/String;

    move-object v1, v3

    move-object v5, v6

    goto :goto_2

    :cond_c
    move-object v7, v15

    .line 1062
    :cond_d
    :goto_2
    iget-object v13, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    move-object v14, v1

    move-object v15, v5

    move-object/from16 v16, v11

    move-object/from16 v17, v7

    move-object/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Lcom/sec/internal/ims/core/sim/MnoMap;->getMnoName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1063
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v9

    invoke-interface {v6, v9}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    .line 1064
    invoke-interface {v9, v10}, Lcom/sec/internal/helper/os/ITelephonyManager;->getRilSimOperator(I)Ljava/lang/String;

    move-result-object v9

    .line 1063
    invoke-virtual {v3, v2, v1, v6, v9}, Lcom/sec/internal/ims/core/sim/MnoMap;->changeMnoNameByIccid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1065
    iget-object v13, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    invoke-virtual/range {v13 .. v18}, Lcom/sec/internal/ims/core/sim/MnoMap;->getHostedRoamingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1067
    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoMap:Lcom/sec/internal/ims/core/sim/MnoMap;

    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/core/sim/MnoMap;->isGcBlockListContains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->isMnoHasGcBlockExtension(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    const/4 v6, 0x1

    goto :goto_3

    :cond_e
    const/4 v6, 0x0

    .line 1068
    :goto_3
    iget v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isGlobalGcEnabled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " - hostedRoamingList: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v7, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1069
    sget-object v7, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v6, 0x0

    .line 1073
    :cond_f
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->getMnoNameWithoutGcExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    .line 1075
    const-string v7, "LABSIM"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1076
    iget-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x1

    invoke-virtual {v0, v2, v6}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1077
    iput-boolean v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    const/4 v6, 0x0

    goto :goto_4

    .line 1080
    :cond_10
    iget-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v7}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1081
    iput-boolean v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    .line 1086
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v7, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v7, :cond_12

    const-string v2, "SUP"

    iget-object v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getGtsAppInstalled()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1087
    :cond_11
    iget v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v7, "With SUP CSC or GtsAppInstalled, use GCF profile for GTS testing."

    invoke-static {v8, v2, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1088
    sget-object v2, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    const/4 v7, 0x1

    invoke-virtual {v0, v2, v7}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1091
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v7, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v7, :cond_13

    const-string v2, "DEFAULT"

    iget-object v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1092
    iget-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v9, "handle_Loaded: Mno.GENERIC Update Name, Country, Region"

    invoke-virtual {v2, v7, v9}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1093
    iget-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->updateGenerictMno(Ljava/lang/String;)V

    .line 1094
    sget-object v2, Lcom/sec/internal/constants/Mno;->GENERIC:Lcom/sec/internal/constants/Mno;

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v7}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    goto :goto_5

    :cond_13
    const/4 v7, 0x0

    :goto_5
    move/from16 v19, v6

    .line 1098
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sys.smf.mnoname"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "|LOADED"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    iget-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SIM PLMN: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", mSimMno: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v6, v9}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1101
    invoke-static/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory;->create(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    .line 1104
    iget-object v2, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->init()V

    .line 1106
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1107
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v9, "hassim"

    invoke-virtual {v2, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1108
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v9, "globalgcenabled"

    invoke-virtual {v2, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1109
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "mnoname"

    invoke-virtual {v2, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v6}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getMvnoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "mvnoname"

    invoke-virtual {v2, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    const-string v6, "imsi"

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    const-string v5, "hostedroaming"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    iget-object v9, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v3, v5, v6, v9, v1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->updateCommonHeader(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->checkOutBoundSIM()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    .line 1121
    iget-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    iget v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v1, v3, v5}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 1122
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMobilityType(Ljava/util/List;)I

    move-result v3

    .line 1124
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/Mno;->GENERIC:Lcom/sec/internal/constants/Mno;

    const/4 v9, 0x4

    if-ne v5, v6, :cond_15

    :cond_14
    :goto_7
    move v6, v9

    goto/16 :goto_9

    .line 1126
    :cond_15
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKDIMhs()Z

    move-result v5

    const/4 v6, 0x5

    if-nez v5, :cond_1f

    iget v5, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v5}, Lcom/sec/internal/helper/SimUtil;->isCctChaCbrsMsoSim(I)Z

    move-result v5

    if-eqz v5, :cond_16

    goto/16 :goto_8

    :cond_16
    if-lez v3, :cond_1b

    .line 1131
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "simMoType"

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_17

    if-ne v3, v5, :cond_18

    .line 1134
    :cond_17
    iget v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v7, "isSimMobilityForVoLTE true"

    invoke-static {v8, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1135
    iget-object v6, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget v7, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v6, v7}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getSimMobilityImsSwitchSetting(Landroid/content/Context;I)Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    :cond_18
    const/4 v6, 0x2

    if-eq v3, v6, :cond_19

    if-ne v3, v5, :cond_1a

    .line 1139
    :cond_19
    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v6, "isSimMobilityForRcs true"

    invoke-static {v8, v3, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1140
    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v3, v1}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getSimMobilityRcsSettings(ILjava/util/List;)Landroid/content/ContentValues;

    move-result-object v1

    .line 1141
    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    :cond_1a
    move v6, v5

    goto :goto_9

    .line 1143
    :cond_1b
    iget v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v1}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "XAS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1148
    iget v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v3, "for XAS use internal IMSSetting"

    invoke-static {v8, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1150
    invoke-static {}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getXasImsSwitchSetting()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    goto :goto_7

    .line 1151
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->useImsSwitch()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1152
    iget-boolean v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    if-eqz v1, :cond_14

    .line 1153
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getGtsAppInstalled()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1154
    iget v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v3, "GTS installed"

    invoke-static {v8, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1d
    move v6, v7

    goto :goto_9

    .line 1162
    :cond_1e
    iget-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v5, "Turned off all switches for OutBoundSIM && not SimMo"

    invoke-virtual {v1, v3, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_9

    .line 1127
    :cond_1f
    :goto_8
    iget-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v5, "Turning off all switches for Non-Ims SIM"

    invoke-virtual {v1, v3, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1170
    :goto_9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "imsSwitchType"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1172
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno(Landroid/content/ContentValues;)V

    if-ne v6, v9, :cond_20

    .line 1174
    iget v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->onImsSwitchUpdated(I)V

    .line 1177
    :cond_20
    iget-boolean v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    if-eqz v1, :cond_21

    .line 1178
    iget v0, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "handle_Loaded: need to update ADS again when imsservice restarted"

    invoke-static {v8, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1179
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->updateAdsSlot()V

    :cond_21
    return v4
.end method

.method handle_Locked(Ljava/lang/String;)V
    .locals 5

    .line 1324
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOCKED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    move-result v0

    .line 1327
    const-string/jumbo v1, "ro.csc.sales_code"

    const-string/jumbo v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    .line 1328
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1329
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 1331
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v3, "SIM LOCKED"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1332
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMC_CODE(locked): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mDevMno: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1334
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sys.smf.mnoname"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->init()V

    .line 1341
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1342
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "hassim"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1343
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mnoname"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getMvnoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mvnoname"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1345
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "imsSwitchType"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1347
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno(Landroid/content/ContentValues;)V

    .line 1348
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 1351
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReady(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method handle_NotReadyUnknown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1217
    const-string v0, "LOADED"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1219
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1225
    :cond_0
    const-string v0, "UNKNOWN"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p2, v0}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->needImsUpOnUnknownState(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1226
    const-string/jumbo p2, "ro.csc.sales_code"

    const-string/jumbo v0, "unknown"

    invoke-static {p2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    .line 1227
    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    .line 1228
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1229
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {p2}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 1232
    :cond_1
    iput-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 1233
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v2, "SIM UNKNOWN"

    invoke-virtual {p2, v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1234
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMC_CODE(unknown): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mDevMno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1236
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0, p2, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1237
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sys.smf.mnoname"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->init()V

    .line 1242
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 1243
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "hassim"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1244
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mnoname"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getMvnoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mvnoname"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1246
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "imsSwitchType"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1248
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno(Landroid/content/ContentValues;)V

    .line 1249
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReady(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 1220
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSimNotReady()V

    return-void
.end method

.method handle_absent(Ljava/lang/String;Z)V
    .locals 11

    .line 1254
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->ABSENT:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    move-result v0

    .line 1256
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    const-string v3, "DRPT"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->requestToSendStoredLog(ILandroid/content/Context;Ljava/lang/String;)V

    .line 1259
    const-string v1, "LOADED"

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1260
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    const-string v4, "imsSwitchType"

    const-string v5, "hassim"

    const-string v6, "mvnoname"

    const-string v7, "mnoname"

    const/4 v8, 0x0

    .line 1311
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-eq v1, v3, :cond_7

    .line 1260
    sget-object v3, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOCKED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v1, v3, :cond_0

    goto/16 :goto_1

    .line 1282
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "SIM ABSENT"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1283
    iput-boolean v8, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 1284
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory;->create(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-eqz v0, :cond_1

    .line 1286
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReady(Ljava/lang/String;)V

    .line 1290
    :cond_1
    const-string/jumbo p1, "ro.csc.sales_code"

    const-string/jumbo v0, "unknown"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    .line 1291
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1292
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    .line 1294
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMC_CODE(absent): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mDevMno: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mDevMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1296
    iget p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p1}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    .line 1297
    invoke-static {p1}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    .line 1298
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " OMCNW_CODE(absent): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMCNW_CODE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mNetMno: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1300
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->setSimMno(Lcom/sec/internal/constants/Mno;Z)V

    .line 1302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sys.smf.mnoname"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|ABSENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->init()V

    .line 1307
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 1308
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1309
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mNetMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getMvnoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    invoke-virtual {p1, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1313
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4

    .line 1314
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneIdFromTelephony()I

    move-result v0

    if-eqz p2, :cond_3

    .line 1315
    iget p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    if-ne v0, p2, :cond_6

    .line 1316
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 1318
    :cond_4
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState()I

    move-result p2

    if-ne p2, v2, :cond_6

    .line 1319
    :cond_5
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno(Landroid/content/ContentValues;)V

    :cond_6
    :goto_0
    return-void

    .line 1262
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "SIM REMOVED"

    invoke-virtual {p1, p2, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1263
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSimRemoved()V

    .line 1265
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {p1, v7}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1267
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->init()V

    .line 1269
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 1270
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 1271
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1272
    invoke-virtual {p2, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {p1, v6}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    invoke-virtual {p2, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1276
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->updateMno(Landroid/content/ContentValues;)V

    return-void
.end method

.method public hasIsim()Z
    .locals 6

    .line 573
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 574
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-interface {v1, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getRilSimOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 575
    const-string/jumbo v2, "ro.boot.hardware"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 576
    sget-object v3, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    const-string v4, "SimManager"

    const/4 v5, 0x0

    if-ne v0, v3, :cond_2

    const-string v3, "SKCTN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SKCTD"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 577
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "qcom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mt"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 578
    :cond_1
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "hasIsim: watch data SIM. treat it as USIM(by SKT operator)"

    invoke-static {v4, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v5

    .line 581
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/Mno;->SAFARICOM_KENYA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    .line 582
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "hasIsim safariCom_kenya : false"

    invoke-static {v4, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v5

    .line 586
    :cond_3
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->isISimAppPresent(ILcom/sec/internal/helper/os/ITelephonyManager;)Z

    move-result v0

    .line 587
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasIsim: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 589
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo v2, "use_usim_on_invalid_isim"

    invoke-static {v1, v2, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isEsim()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_4
    if-eqz v0, :cond_6

    .line 590
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isISimDataValid()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    const/4 v5, 0x1

    :cond_6
    move v0, v5

    :cond_7
    return v0
.end method

.method public hasNoSim()Z
    .locals 1

    .line 506
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasVsim()Z
    .locals 0

    .line 599
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result p0

    return p0
.end method

.method public initSequentially()V
    .locals 9

    .line 346
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 347
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 348
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 349
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 351
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 352
    const-string v1, "com.samsung.action.SIM_ICCID_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v1, "com.android.intent.isim_refresh"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v1, "android.intent.action.ISIM_LOADED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    const-string v1, "com.samsung.intent.action.isim_refresh_fail_recovery"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 360
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 361
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 364
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mGtsAppInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 366
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 369
    const-string v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 374
    const-string v0, "com.sec.imsservice.AKA_CHALLENGE_COMPLETE"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    const-string v0, "com.sec.imsservice.AKA_CHALLENGE_FAILED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mAkaEventReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 379
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "init mno map"

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x8

    .line 380
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected initializeSimState()V
    .locals 6

    .line 1437
    const-string v0, "LOADED"

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    .line 1438
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->readSimStateProperty(ILcom/sec/internal/helper/os/ITelephonyManager;)Ljava/lang/String;

    move-result-object v2

    .line 1439
    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeSimState (gsm.sim.state) : =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SimManager"

    invoke-static {v5, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1440
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v1, v4

    goto :goto_1

    :sswitch_0
    const-string v1, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "UNKNOWN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :sswitch_3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 1444
    :pswitch_0
    invoke-virtual {p0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1449
    :pswitch_1
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsCrashSimEvent:Z

    .line 1450
    invoke-virtual {p0, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79d7dbfb -> :sswitch_3
        -0x79d6d8f6 -> :sswitch_2
        0x19d1382a -> :sswitch_1
        0x72b3d739 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isEsim()Z
    .locals 0

    .line 1935
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsESim:Z

    return p0
.end method

.method public isGBASupported()Z
    .locals 3

    .line 654
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isGbaSupported(I)Z

    move-result v0

    .line 660
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGbaSupported ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method isISimAppLoaded()Z
    .locals 5

    .line 515
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isISimAppLoaded : simstate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", subscriptionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isISimAppPresent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 516
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->isISimAppPresent(ILcom/sec/internal/helper/os/ITelephonyManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", getboolean "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    .line 517
    const-string v3, "block_regi_on_invalid_isim"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isISimDataValid() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isISimDataValid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 515
    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 519
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSubscriptionId()I

    move-result v0

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 520
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->isISimAppPresent(ILcom/sec/internal/helper/os/ITelephonyManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->isISimDataValid()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    :cond_1
    :goto_0
    return v4

    :cond_2
    return v2
.end method

.method public isISimDataValid()Z
    .locals 0

    .line 666
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getISimDataValidity()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLabSimCard()Z
    .locals 3

    .line 642
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLabSimCard: state ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] isLabSim ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isMnoHasGcBlockExtension(Ljava/lang/String;)Z
    .locals 0

    .line 1930
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/Mno;->GC_BLOCK_EXTENSION:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isOutBoundSIM()Z
    .locals 3

    .line 648
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOutBoundSIM: state ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] isOutBoundSIM ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSimAvailable()Z
    .locals 3

    .line 500
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsimLoaded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasIsim():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasIsim()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSimLoaded()Z
    .locals 1

    .line 1630
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isValidImsi(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 881
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isValidOperator(Ljava/lang/String;)Z
    .locals 0

    .line 877
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p1, 0x5

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method notifyMnoChanged()V
    .locals 4

    .line 1492
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManager;->URI_UPDATE_MNO:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1493
    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyMnoChanged ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SimManager"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1494
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->getAll()Landroid/content/ContentValues;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method notifySimReady(Ljava/lang/String;)V
    .locals 5

    .line 410
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifySimReady: state ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",NOTI SIM EVT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x1000001f

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 412
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    .line 414
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.ims.action.onsimloaded"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x20

    .line 415
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 416
    const-string v2, "SimManager"

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo v4, "send ACTION_IMS_ON_SIMLOADED"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 417
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 420
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 422
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 424
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimDataAdaptor:Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    if-eqz v1, :cond_3

    .line 425
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->needHandleLoadedAgain(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 426
    const-string v1, "SimManager"

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM READY by needHandleLoadedAgain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 427
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_2

    .line 423
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 431
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    monitor-enter p1

    .line 432
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/ISimEventListener;

    .line 433
    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-interface {v2, v3, v0}, Lcom/sec/internal/interfaces/ims/core/ISimEventListener;->onReady(IZ)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 435
    :cond_4
    monitor-exit p1

    return-void

    :goto_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method notifySimStateChanged()V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStateChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method notifyUiccChanged()V
    .locals 0

    .line 447
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mUiccChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public onImsSwitchUpdated(I)V
    .locals 8

    .line 289
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    const-string v1, "imsswitch"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 292
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 293
    const-string v6, "enableServiceRcs"

    const-string v7, "enableServiceRcschat"

    const-string v1, "enableIms"

    const-string v2, "enableServiceVowifi"

    const-string v3, "enableServiceSmsip"

    const-string v4, "enableServiceVilte"

    const-string v5, "enableServiceVolte"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, p1}, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda2;-><init>(Landroid/content/ContentValues;Landroid/content/SharedPreferences;)V

    .line 299
    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 303
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->update(Landroid/content/ContentValues;)V

    .line 305
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", onImsSwitchUpdated : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-void
.end method

.method protected onSimNotReady()V
    .locals 3

    .line 1536
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "SimManager"

    const-string/jumbo v2, "onSimNotReady"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1537
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1538
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    const/4 v0, 0x0

    .line 1539
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 1540
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    const/4 v1, -0x1

    .line 1541
    iput v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1542
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsESim:Z

    .line 1544
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimRemoved()V

    .line 1545
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->clearCache()V

    return-void
.end method

.method onSimRefresh()V
    .locals 3

    .line 1502
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "SimManager"

    const-string/jumbo v2, "onSimRefresh"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",SIM REFRESH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x1000000f

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1504
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1505
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z

    const/4 v0, 0x0

    .line 1506
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 1507
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    const/4 v0, -0x1

    .line 1508
    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1513
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1514
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsRefresh:Z

    .line 1515
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimRefresh()V

    .line 1518
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->clearCache()V

    return-void
.end method

.method protected onSimRemoved()V
    .locals 3

    .line 1526
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo v1, "onSimRemoved:"

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 1527
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsimLoaded:Z

    .line 1528
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    const/4 v0, -0x1

    .line 1529
    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1531
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimRemoved()V

    .line 1532
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->clearCache()V

    return-void
.end method

.method protected onSimStateChange(Ljava/lang/String;)V
    .locals 7

    .line 890
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 892
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isMultiSimSupported()Z

    move-result v1

    .line 894
    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSimStateChange: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], operator: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SimManager"

    invoke-static {v4, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 897
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v2

    .line 898
    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPrimaryImei()Ljava/lang/String;

    move-result-object v3

    .line 899
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",EVT:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/sec/internal/log/LogRedactor;->IMEI:Lcom/sec/internal/log/LogRedactor;

    .line 900
    invoke-virtual {v6, v2}, Lcom/sec/internal/log/LogRedactor;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 899
    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 903
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasVsim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 904
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->handleVsim(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 908
    :cond_0
    const-string v2, "LOADED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_1

    .line 909
    iget p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "mnoname"

    invoke-static {p1, v1, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 910
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->handle_Loaded(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 911
    :cond_1
    const-string v2, "DELAYED_ISIM_LOAD"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 912
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->handle_Delayed_IsimLoaded()Z

    move-result p1

    goto :goto_0

    .line 913
    :cond_2
    const-string v2, "ISIM_LOADED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 914
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->handle_IsimLoaded()Z

    move-result p1

    goto :goto_0

    .line 915
    :cond_3
    const-string v2, "NOT_READY"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "UNKNOWN"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 918
    :cond_4
    const-string v2, "ABSENT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 919
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->handle_absent(Ljava/lang/String;Z)V

    return-void

    .line 921
    :cond_5
    const-string v1, "LOCKED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 922
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->handle_Locked(Ljava/lang/String;)V

    return-void

    :cond_6
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_7

    .line 927
    invoke-virtual {p0, v3, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->handleSimStateChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void

    .line 916
    :cond_8
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->handle_NotReadyUnknown(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method onSoftphoneAuthDone(Ljava/lang/String;)V
    .locals 3

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aka result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",LEN:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 841
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "null"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x10000031

    .line 840
    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 842
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 843
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSoftphoneAccount:Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;->mResponse:Landroid/os/Message;

    if-eqz v0, :cond_2

    .line 844
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 845
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSoftphoneAccount:Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;->mResponse:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 849
    :cond_1
    iget p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v0, "aka failed"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x5

    .line 850
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_1
    return-void
.end method

.method onSoftphoneAuthFailed()V
    .locals 3

    .line 855
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo v1, "onSoftphoneAuthFailed"

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 857
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSoftphoneAccount:Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;->mResponse:Landroid/os/Message;

    const/16 v0, 0x2e

    iput v0, p0, Landroid/os/Message;->what:I

    .line 858
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3

    .line 394
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string v1, "Register for sim ready"

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 395
    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 396
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimReadyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 398
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object p2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    .line 399
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->needImsUpOnUnknownState(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 400
    :cond_0
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/Registrant;->notifyResult(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 455
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRefreshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 469
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimRemovedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForSimStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 486
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStateChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForUiccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 443
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mUiccChangedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerSimCardEventListener(Lcom/sec/internal/interfaces/ims/core/ISimEventListener;)V
    .locals 2

    .line 1674
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    monitor-enter v0

    .line 1675
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1676
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1678
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1680
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->notifySimReadyAlreadyDone:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v0, v1, :cond_2

    .line 1681
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1, p0, v0}, Lcom/sec/internal/interfaces/ims/core/ISimEventListener;->onReady(IZ)V

    :cond_2
    return-void

    .line 1678
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public requestIsimAuthentication(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0

    .line 808
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/sim/SimManager;->getIsimAuthentication(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 810
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 811
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 817
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->getIsimAuthentication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 819
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 820
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public requestSoftphoneAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 2

    .line 826
    new-instance v0, Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

    invoke-direct {v0, p1, p4, p2, p3}, Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSoftphoneAccount:Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

    .line 827
    iget p3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestSoftphoneAuthentication, id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimManager"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 828
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",REQ AUTH"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const v0, 0x10000030

    invoke-static {v0, p3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 830
    new-instance p3, Landroid/content/Intent;

    const-string v0, "com.sec.imsservice.REQUEST_AKA_CHALLENGE"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 832
    const-string v0, "nonce"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    const-string p1, "impi"

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 834
    const-string p1, "id"

    invoke-virtual {p3, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 835
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, p3, p1}, Lcom/sec/ims/extensions/ContextExt;->sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method protected setGtsAppInstalled(Z)V
    .locals 0

    .line 1913
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsGtsAppInstalled:Z

    return-void
.end method

.method public setIsimLoaded()V
    .locals 1

    .line 511
    const-string v0, "ISIM_LOADED"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSimStateChange(Ljava/lang/String;)V

    return-void
.end method

.method public setSimMno(Lcom/sec/internal/constants/Mno;Z)V
    .locals 1

    .line 1459
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v0, p1}, Lcom/sec/internal/helper/SimUtil;->setSimMno(ILcom/sec/internal/constants/Mno;)V

    if-eqz p2, :cond_0

    .line 1461
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSimRefreshed()V
    .locals 2

    .line 604
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo v0, "setSimRefreshed:"

    const-string v1, "SimManager"

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setSubscriptionInfo(Landroid/telephony/SubscriptionInfo;)V
    .locals 4

    monitor-enter p0

    .line 1616
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->hasVsim()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1617
    const-string v0, "SimManager"

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSubscriptionInfo : mSubscriptionId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mSimSlot : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1617
    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1619
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 1620
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    .line 1621
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->getEhplmn(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mHighestPriorityEhplmn:Ljava/lang/String;

    .line 1622
    const-string v0, "SimManager"

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stored EHPLMN ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mHighestPriorityEhplmn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1624
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsESim:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1626
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method updateGlobalSetting(I)V
    .locals 7

    .line 309
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    const-string v1, "imsSwitchType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    const-string v1, "enableIms"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 315
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    const-string v3, "enableServiceVolte"

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 316
    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    const-string v4, "enableServiceVowifi"

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v0, :cond_1

    if-nez v1, :cond_4

    if-nez v2, :cond_4

    .line 319
    :cond_1
    const-string v0, "SimManager"

    const-string/jumbo v1, "updateGlobalSetting: enableIms or enableServiceVolte, enableServiceVowifi : disable"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 320
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 322
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isJPNOmcCode()Z

    move-result v1

    const-string v2, "CS"

    const/4 v3, 0x3

    const-string/jumbo v4, "voice_domain_pref_eutran"

    if-eqz v1, :cond_2

    .line 323
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo v6, "updateGlobalSetting: set voice_domain_eutran ps preferred for Data only devices"

    invoke-virtual {v1, v5, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 325
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 324
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 326
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getDevMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v1

    const-string v5, "emergency_domain_setting"

    if-eqz v1, :cond_3

    .line 328
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 327
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    const-string v1, "PS"

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 332
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 331
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :goto_0
    const-string/jumbo v1, "ss_domain_setting"

    const-string v3, "CS_ALWAYS"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string/jumbo v1, "ussd_domain_setting"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    sget-object v1, Lcom/sec/internal/ims/core/sim/SimManager;->URI_UPDATE_GLOBAL:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "simslot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 339
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public updateMno(Landroid/content/ContentValues;)V
    .locals 6

    .line 1467
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    const-string/jumbo v1, "updateMno:"

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1468
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "phoneId"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1472
    const-string v0, "imsi"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1473
    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    :cond_0
    const-string v0, "imsSwitchType"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, -0x1

    .line 1477
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1479
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->update(Landroid/content/ContentValues;)V

    .line 1481
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v2, 0x1000000d

    invoke-static {v2, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1482
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimMnoName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    if-eqz v0, :cond_1

    .line 1484
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimSlot:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mMnoInfoStorage:Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    .line 1485
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->getAll()Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->convertMnoInfoToString(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x1000000e

    .line 1484
    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1488
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->notifyMnoChanged()V

    return-void
.end method

.method updateSimState(Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z
    .locals 2

    .line 862
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 866
    :cond_0
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimStatePrev:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 867
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 869
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    if-eq p1, v0, :cond_1

    .line 870
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mIsOutBoundSIM:Z

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method useImsSwitch()Z
    .locals 2

    .line 885
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    const-string v0, "GCF"

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SUP"

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->OMC_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mLabSimCard:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
