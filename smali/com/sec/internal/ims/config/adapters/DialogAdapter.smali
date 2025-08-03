.class public Lcom/sec/internal/ims/config/adapters/DialogAdapter;
.super Landroid/os/Handler;
.source "DialogAdapter.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;


# static fields
.field public static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final CANCEL_TC_NOTIFICATION:Ljava/lang/String; = "com.samsung.rcs.framework.dialogadapter.action.CANCEL_TC_NOTIFICATION"

.field static final HANDLE_CREATE_SHOW_ACCEPT_REJECT:I = 0x0

.field static final HANDLE_CREATE_SHOW_AUTOCONFIG:I = 0x5

.field static final HANDLE_CREATE_SHOW_MSISDN:I = 0x2

.field static final HANDLE_SIM_STATE_ABSENT:I = 0x6

.field static final KEY_PHONE_ID:Ljava/lang/String; = "phone_id"

.field private static final LOG_TAG:Ljava/lang/String; = "DialogAdapter"

.field static final RCS_MSISDN_PROMPT_NOTIFICATION:I = 0x3636a01

.field static final RCS_TC_NOTIFICATION:I = 0xa807ad

.field public static final SHOW_MSISDN_POPUP:Ljava/lang/String; = "com.samsung.rcs.framework.dialogadapter.action.SHOW_MSISDN_POPUP"

.field public static final SHOW_TC_POPUP:Ljava/lang/String; = "com.samsung.rcs.framework.dialogadapter.action.SHOW_TC_POPUP"

.field static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"


# instance fields
.field private mAccept:Ljava/lang/String;

.field private mAcceptReject:Z

.field private final mContext:Landroid/content/Context;

.field private mCountryCode:Ljava/lang/String;

.field private mDialog:Landroid/app/AlertDialog;

.field protected mDialogNotiReceiver:Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;

.field private mMessage:Ljava/lang/String;

.field private mMsisdn:Ljava/lang/String;

.field private mNextCancel:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPhoneId:I

.field private mRcsTcNotification:Z

.field private mReceiver:Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;

.field private mReceiverForTcPopup:Lcom/sec/internal/ims/config/adapters/DialogAdapter$ReceiverForTcPopup;

.field private mReject:Ljava/lang/String;

.field private final mSemaphore:Ljava/util/concurrent/Semaphore;

.field private mSkip:Z

.field private mSupportNotiBar:Z

.field private mTcPopupFlag:Z

.field private mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

.field private mTitle:Ljava/lang/String;

.field private mYesNo:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmAccept(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAccept:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCountryCode(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mCountryCode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Landroid/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMessage(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationManager(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Landroid/app/NotificationManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmReject(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReject:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemaphore(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSemaphore:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportNotiBar(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSupportNotiBar:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTcPopupFlag(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTcPopupFlag:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephony(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Lcom/sec/internal/helper/os/ITelephonyManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitle(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAcceptReject(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAcceptReject:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMsisdn(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMsisdn:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNextCancel(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mNextCancel:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRcsTcNotification(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mRcsTcNotification:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSkip(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSkip:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTcPopupFlag(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTcPopupFlag:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmYesNo(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mYesNo:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misStringValid(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->isStringValid(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshallRcsRegisterByDefault(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->shallRcsRegisterByDefault(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$munregisterReceiverForTcPopup(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->unregisterReceiverForTcPopup()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smshouldShowButton(Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->shouldShowButton(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V
    .locals 2

    .line 116
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, 0x0

    .line 87
    iput-boolean p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTcPopupFlag:Z

    .line 90
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, p2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSemaphore:Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    .line 93
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTitle:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMessage:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAccept:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReject:Ljava/lang/String;

    .line 97
    iput p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    .line 98
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mCountryCode:Ljava/lang/String;

    .line 99
    iput-boolean p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAcceptReject:Z

    .line 100
    iput-boolean p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mYesNo:Z

    .line 101
    iput-boolean p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mNextCancel:Z

    .line 102
    iput-boolean p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSkip:Z

    .line 103
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMsisdn:Ljava/lang/String;

    const/4 v1, 0x1

    .line 104
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSupportNotiBar:Z

    .line 105
    iput-boolean p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mRcsTcNotification:Z

    .line 108
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 134
    new-instance p2, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    iput-object p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialogNotiReceiver:Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;

    .line 163
    new-instance p2, Lcom/sec/internal/ims/config/adapters/DialogAdapter$ReceiverForTcPopup;

    invoke-direct {p2, p0, v0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$ReceiverForTcPopup;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Lcom/sec/internal/ims/config/adapters/DialogAdapter$ReceiverForTcPopup-IA;)V

    iput-object p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReceiverForTcPopup:Lcom/sec/internal/ims/config/adapters/DialogAdapter$ReceiverForTcPopup;

    .line 208
    new-instance p2, Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    iput-object p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReceiver:Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;

    .line 117
    sget-object p2, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    const-string v1, "Init DialogAdapter"

    invoke-static {p2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 118
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    .line 119
    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mNotificationManager:Landroid/app/NotificationManager;

    .line 121
    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 122
    invoke-direct {p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->registerReceivers()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V

    .line 112
    iput p3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    return-void
.end method

.method private checkNightMode(Landroid/content/Context;)I
    .locals 0

    .line 469
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    const p0, 0x10302d1

    goto :goto_0

    :cond_0
    const p0, 0x10302d2

    :goto_0
    return p0
.end method

.method private createAcceptRejectBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    .locals 4

    .line 476
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->checkNightMode(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 478
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f070009

    const/4 v3, 0x0

    .line 479
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    const v2, 0x7f05003b

    .line 480
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 481
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    if-eqz p2, :cond_0

    .line 484
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_0
    const p2, 0x7f050038

    .line 487
    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p3, :cond_1

    .line 489
    new-instance v1, Lcom/sec/internal/ims/config/adapters/DialogAdapter$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$1;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    invoke-static {p2, p3, v1}, Lcom/sec/internal/helper/userconsent/HyperlinkUtils;->processLinks(Landroid/widget/TextView;Ljava/lang/String;Lcom/sec/internal/helper/userconsent/IHyperlinkOnClickListener;)V

    .line 511
    :cond_1
    const-string p2, "1"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 512
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f090022

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 513
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 514
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f09001b

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 516
    :cond_2
    new-instance p4, Lcom/sec/internal/ims/config/adapters/DialogAdapter$2;

    invoke-direct {p4, p0, p5}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$2;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 537
    :cond_3
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 539
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f090024

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/sec/internal/ims/config/adapters/DialogAdapter$3;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$3;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    .line 538
    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 556
    :cond_4
    new-instance p1, Lcom/sec/internal/ims/config/adapters/DialogAdapter$4;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$4;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method private createAutoconfigBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 3

    .line 671
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->checkNightMode(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 673
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 676
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 680
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/config/adapters/DialogAdapter$9;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$9;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    .line 679
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 692
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f09001d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/sec/internal/ims/config/adapters/DialogAdapter$10;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$10;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    .line 691
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method private createMsisdnBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 7

    .line 571
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->checkNightMode(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 573
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v1

    const v2, 0x7f09001f

    if-eqz v1, :cond_0

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 577
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 581
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f070009

    const/4 v3, 0x0

    .line 582
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    const v4, 0x7f05003b

    .line 583
    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, 0x7f07000a

    .line 585
    invoke-virtual {v1, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f050038

    .line 587
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 588
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f050031

    .line 591
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 592
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 594
    const-string v1, ""

    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMsisdn:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "skip"

    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMsisdn:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 595
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMsisdn:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v1, 0x3

    .line 598
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 599
    new-instance v1, Lcom/sec/internal/ims/config/adapters/DialogAdapter$5;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$5;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 619
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 622
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/config/adapters/DialogAdapter$6;

    invoke-direct {v2, p0, v3}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$6;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Landroid/widget/EditText;)V

    .line 621
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 636
    iget v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 637
    invoke-direct {p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->isEnableUPInImsprofile()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isVodafone()Z

    move-result v1

    if-nez v1, :cond_3

    .line 639
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/config/adapters/DialogAdapter$7;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$7;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    .line 638
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 652
    :cond_3
    invoke-direct {p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->isEnableUPInImsprofile()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 654
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f090025

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/sec/internal/ims/config/adapters/DialogAdapter$8;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$8;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    .line 653
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_4
    return-object v0
.end method

.method private isEnableUPInImsprofile()Z
    .locals 0

    .line 706
    iget p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    invoke-static {p0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object p0

    .line 707
    invoke-static {p0}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isStringValid(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 366
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private registerReceiverForTcPopup()V
    .locals 3

    .line 195
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 196
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReceiverForTcPopup:Lcom/sec/internal/ims/config/adapters/DialogAdapter$ReceiverForTcPopup;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private registerReceivers()V
    .locals 4

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 127
    const-string v1, "com.samsung.rcs.framework.dialogadapter.action.SHOW_TC_POPUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v1, "com.samsung.rcs.framework.dialogadapter.action.CANCEL_TC_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v1, "com.samsung.rcs.framework.dialogadapter.action.SHOW_MSISDN_POPUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialogNotiReceiver:Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReceiver:Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private shallRcsRegisterByDefault(Ljava/lang/String;)Z
    .locals 3

    .line 719
    iget p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 720
    sget-object v0, Lcom/sec/internal/constants/Mno;->TELEFONICA_GERMANY:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_SPAIN:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1"

    .line 721
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static shouldShowButton(Ljava/lang/String;)Z
    .locals 1

    .line 370
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private showRcsNotification(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 242
    sget-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showRcsNotification: type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 245
    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v3, Landroid/app/NotificationChannel;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v1, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 247
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f040017

    .line 248
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/4 v1, 0x0

    .line 249
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    const/4 v3, 0x1

    .line 250
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v4, 0xa807ad

    const/high16 v5, 0x2000000

    .line 252
    const-string/jumbo v6, "phone_id"

    if-eq p1, v4, :cond_1

    const p2, 0x3636a01

    if-eq p1, p2, :cond_0

    .line 276
    iget p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    const-string/jumbo p1, "showRcsNotification: unsupported type!"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 265
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.samsung.rcs.framework.dialogadapter.action.SHOW_MSISDN_POPUP"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    iget p3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    invoke-virtual {p2, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    iget-object p3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    iget-object p3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    add-int/2addr v0, p1

    invoke-static {p3, v0, p2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 270
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f09001f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [SIM"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    add-int/2addr v0, v3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 272
    iget-object p3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f09001e

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 254
    :cond_1
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mRcsTcNotification:Z

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.framework.dialogadapter.action.SHOW_TC_POPUP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    iget v3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    add-int/2addr v4, p1

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 260
    invoke-static {p3, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p3

    invoke-interface {p3}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object p3

    .line 261
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 262
    invoke-virtual {v2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_2

    .line 280
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 282
    :cond_2
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 283
    iget-object p3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mNotificationManager:Landroid/app/NotificationManager;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    add-int/2addr p1, p0

    invoke-virtual {p3, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private unregisterReceiverForTcPopup()V
    .locals 2

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReceiverForTcPopup:Lcom/sec/internal/ims/config/adapters/DialogAdapter$ReceiverForTcPopup;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    sget-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    const-string/jumbo v1, "unregisterReceiverForTcPopup: Receiver not registered!"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 726
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialogNotiReceiver:Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;

    if-eqz v0, :cond_0

    .line 727
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReceiver:Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;

    if-eqz v0, :cond_1

    .line 730
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public getAcceptReject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 375
    iget v5, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->getAcceptReject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getAcceptReject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .line 380
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTitle:Ljava/lang/String;

    .line 381
    iput-object p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMessage:Ljava/lang/String;

    .line 382
    iput-object p3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAccept:Ljava/lang/String;

    .line 383
    iput-object p4, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReject:Ljava/lang/String;

    .line 384
    iput p5, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    .line 386
    sget-object p3, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getAcceptReject"

    invoke-static {p3, p5, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 388
    iget-object p5, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTitle:Ljava/lang/String;

    invoke-direct {p0, p5}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->isStringValid(Ljava/lang/String;)Z

    move-result p5

    const/4 v0, 0x1

    if-eqz p5, :cond_4

    iget-object p5, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMessage:Ljava/lang/String;

    invoke-direct {p0, p5}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->isStringValid(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_4

    iget-object p5, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAccept:Ljava/lang/String;

    .line 389
    invoke-static {p5}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->shouldShowButton(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_0

    iget-object p5, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReject:Ljava/lang/String;

    invoke-static {p5}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->shouldShowButton(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_0

    goto :goto_2

    :cond_0
    const p5, 0xa807ad

    .line 395
    invoke-direct {p0, p5, p1, p2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->showRcsNotification(ILjava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    .line 397
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "user_setup_complete"

    const/4 p5, 0x0

    .line 396
    invoke-static {p1, p2, p5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, p5

    .line 398
    :goto_0
    iget-boolean p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTcPopupFlag:Z

    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    .line 399
    iget p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    const-string/jumbo p2, "support_notification_for_TnC"

    .line 400
    invoke-static {p1, p2, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p1

    .line 401
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 404
    :cond_2
    iget p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    const-string p2, "getAcceptReject: wait yes or no"

    invoke-static {p3, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 405
    invoke-direct {p0, p4}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->shallRcsRegisterByDefault(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 406
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAcceptReject:Z

    goto :goto_1

    .line 409
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 411
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 414
    :goto_1
    sget-object p1, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    iget p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getAcceptReject: receive yes or no:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAcceptReject:Z

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 415
    iput-boolean p5, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTcPopupFlag:Z

    .line 416
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAcceptReject:Z

    return p0

    .line 390
    :cond_4
    :goto_2
    iget p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "popup dialog cancelled mTitle: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTitle:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", mMessage: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMessage:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", mAccept: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAccept:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", mReject: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReject:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method public getMsisdn(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 428
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mCountryCode:Ljava/lang/String;

    .line 430
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    .line 431
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "user_setup_complete"

    const/4 v1, 0x0

    .line 430
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    .line 433
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const p1, 0x3636a01

    const/4 v0, 0x0

    .line 435
    invoke-direct {p0, p1, v0, v0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->showRcsNotification(ILjava/lang/String;Ljava/lang/String;)V

    .line 438
    :goto_0
    sget-object p1, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    const-string v1, "getMsisdn: wait MSISDN"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 440
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 442
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 444
    :goto_1
    sget-object p1, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMsisdn: mYesNo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mYesNo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSkip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSkip:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 445
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mYesNo:Z

    if-eqz v0, :cond_1

    .line 446
    iget v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMsisdn: receive MSISDN:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMsisdn:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 447
    :cond_1
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSkip:Z

    if-eqz p1, :cond_2

    .line 448
    const-string/jumbo p1, "skip"

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMsisdn:Ljava/lang/String;

    .line 450
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMsisdn:Ljava/lang/String;

    return-object p0
.end method

.method public getMsisdn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 421
    iput-object p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMsisdn:Ljava/lang/String;

    .line 422
    sget-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMsisdn: old msisdn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " entered earlier by user"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 423
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNextCancel()Z
    .locals 4

    const/4 v0, 0x5

    .line 455
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 457
    sget-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    const-string v2, "getNextCancel: wait Next or Cancel"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 461
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 463
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextCancel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mNextCancel:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 464
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mNextCancel:Z

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 288
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 290
    sget-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 291
    iget v1, p1, Landroid/os/Message;->what:I

    const v2, 0x10100

    const/16 v3, 0x7f6

    if-eqz v1, :cond_6

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v1, v4, :cond_4

    const/4 v4, 0x5

    if-eq v1, v4, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 361
    iget p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    const-string/jumbo p1, "unknown message!!"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 347
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/AlertDialog;

    .line 348
    iget-boolean v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mRcsTcNotification:Z

    if-eqz v1, :cond_1

    .line 349
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.framework.dialogadapter.action.CANCEL_TC_NOTIFICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    const-string/jumbo v2, "phone_id"

    iget v3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 351
    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    if-eqz p1, :cond_9

    .line 354
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 355
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 356
    iget p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    const-string p1, "dismiss Dialog"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 332
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->createAutoconfigBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    .line 333
    const-string/jumbo p1, "ro.build.scafe.cream"

    invoke-static {p1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "white"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 334
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 337
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 339
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->setType(I)V

    .line 342
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 343
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 317
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->createMsisdnBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    .line 318
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 321
    const-string/jumbo p1, "ro.build.scafe.version"

    invoke-static {p1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "2017A"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 322
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x10000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 324
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->setType(I)V

    .line 326
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 327
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 328
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 293
    :cond_6
    iget v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    const-string v4, "accept, reject dialog create & show"

    invoke-static {v0, v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x1

    .line 295
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSupportNotiBar:Z

    .line 296
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_7

    .line 297
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSupportNotiBar:Z

    .line 299
    :cond_7
    iget p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "support_notification_for_TnC : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSupportNotiBar:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 301
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSupportNotiBar:Z

    if-eqz p1, :cond_8

    .line 302
    invoke-direct {p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->registerReceiverForTcPopup()V

    .line 304
    :cond_8
    iget-object v5, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMessage:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAccept:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReject:Ljava/lang/String;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->createAcceptRejectBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 305
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    .line 306
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 309
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->setType(I)V

    .line 311
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    iget-boolean v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSupportNotiBar:Z

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 312
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTcPopupFlag:Z

    .line 313
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_9
    :goto_1
    return-void
.end method
