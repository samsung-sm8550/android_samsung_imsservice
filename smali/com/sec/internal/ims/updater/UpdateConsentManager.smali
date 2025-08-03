.class public Lcom/sec/internal/ims/updater/UpdateConsentManager;
.super Ljava/lang/Object;
.source "UpdateConsentManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateConsentManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImsUpdateDialog:Landroid/app/AlertDialog;

.field private final mService:Lcom/sec/internal/interfaces/ims/updater/IUpdateConsentNotifiable;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$8dWAwJK8bG0DjY4o37nAAFmNb00(Lcom/sec/internal/ims/updater/UpdateConsentManager;Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/UpdateConsentManager;->lambda$showUpdateConsent$2(Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AJAvy2b8uEXqnr6qqvZiO1jFCfc(Lcom/sec/internal/ims/updater/UpdateConsentManager;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/updater/UpdateConsentManager;->lambda$showUpdateConsent$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DiUeXcgVU5nOc2yqnPlyaydFDdE(Lcom/sec/internal/ims/updater/UpdateConsentManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/UpdateConsentManager;->lambda$showRebootConsent$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$FTckOFzpIob5u6N0iglVbz9KiQo(Lcom/sec/internal/ims/updater/UpdateConsentManager;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/updater/UpdateConsentManager;->lambda$showUpdateConsent$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sl6Q-bGc2eOnP3Kac209qxBHzKs(Lcom/sec/internal/ims/updater/UpdateConsentManager;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/updater/UpdateConsentManager;->lambda$showStorageWarning$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Srw6WTHQZ9vsrcWpaWUtxqWKBoM(Lcom/sec/internal/ims/updater/UpdateConsentManager;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/updater/UpdateConsentManager;->lambda$showRebootConsent$6(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iaezactUBw6Z5zhrYfjT_Hmd4vY(Lcom/sec/internal/ims/updater/UpdateConsentManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/UpdateConsentManager;->lambda$showStorageWarning$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$sG_BXj97RiRYIku_QIQCGPNTKyU(Lcom/sec/internal/ims/updater/UpdateConsentManager;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/updater/UpdateConsentManager;->lambda$showRebootConsent$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/updater/IUpdateConsentNotifiable;Landroid/os/Looper;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sec/internal/ims/updater/UpdateConsentManager;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/sec/internal/ims/updater/UpdateConsentManager;->mService:Lcom/sec/internal/interfaces/ims/updater/IUpdateConsentNotifiable;

    .line 27
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/internal/ims/updater/UpdateConsentManager;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method private isDialogShowing()Z
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateConsentManager;->mImsUpdateDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$showRebootConsent$5(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 120
    const-string p1, "UpdateConsentManager"

    const-string p2, "Reboot Consent Accepted"

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateConsentManager;->mContext:Landroid/content/Context;

    const-string p1, "IMS Service update"

    invoke-static {p0, p1}, Lcom/sec/internal/ims/updater/util/StubUtil;->reboot(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showRebootConsent$6(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 126
    const-string p1, "UpdateConsentManager"

    const-string p2, "Reboot Later"

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/UpdateConsentManager;->isDialogShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/sec/internal/ims/updater/UpdateConsentManager;->mImsUpdateDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 130
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateConsentManager;->mService:Lcom/sec/internal/interfaces/ims/updater/IUpdateConsentNotifiable;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/updater/IUpdateConsentNotifiable;->onRebootLater()V

    return-void
.end method

.method private synthetic lambda$showRebootConsent$7()V
    .locals 4

    .line 105
    const-string v0, "UpdateConsentManager"

    const-string/jumbo v1, "showRebootConsent"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/UpdateConsentManager;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 110
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/internal/ims/updater/UpdateConsentManager;->mContext:Landroid/content/Context;

    const v2, 0x10302d2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 113
    iget-object v1, p0, Lcom/sec/internal/ims/updater/UpdateConsentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000a

    .line 114
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f090007

    .line 115
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f09000c

    .line 118
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 119
    new-instance v3, Lcom/sec/internal/ims/updater/UpdateConsentManager$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/updater/UpdateConsentManager$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/ims/updater/UpdateConsentManager;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f090006

    .line 124
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 125
    new-instance v2, Lcom/sec/internal/ims/updater/UpdateConsentManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/updater/UpdateConsentManager$$ExternalSyntheticLambda5;-><init>(Lcom/sec/internal/ims/updater/UpdateConsentManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 133
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/updater/UpdateConsentManager;->showDialog(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method private synthetic lambda$showStorageWarning$3(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 92
    const-string p1, "UpdateConsentManager"

    const-string/jumbo p2, "storage Warning OK"

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/UpdateConsentManager;->isDialogShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/sec/internal/ims/updater/UpdateConsentManager;->mImsUpdateDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 96
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateConsentManager;->mService:Lcom/sec/internal/interfaces/ims/updater/IUpdateConsentNotifiable;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/updater/IUpdateConsentNotifiable;->onUpdateCheckComplete()V

    return-void
.end method

.method private synthetic lambda$showStorageWarning$4()V
    .locals 3

    .line 82
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/internal/ims/updater/UpdateConsentManager;->mContext:Landroid/content/Context;

    const v2, 0x10302d2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 85
    iget-object v1, p0, Lcom/sec/internal/ims/updater/UpdateConsentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 87
    const-string v2, " Storage Warning "

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 88
    const-string v2, " Free space is required to install IMS Service "

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f09000c

    .line 90
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    new-instance v2, Lcom/sec/internal/ims/updater/UpdateConsentManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/updater/UpdateConsentManager$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/updater/UpdateConsentManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/updater/UpdateConsentManager;->showDialog(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method private synthetic lambda$showUpdateConsent$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/UpdateConsentManager;->isDialogShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/sec/internal/ims/updater/UpdateConsentManager;->mImsUpdateDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 64
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateConsentManager;->mService:Lcom/sec/internal/interfaces/ims/updater/IUpdateConsentNotifiable;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/updater/IUpdateConsentNotifiable;->onUpdateCheckComplete()V

    return-void
.end method

.method private synthetic lambda$showUpdateConsent$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/UpdateConsentManager;->isDialogShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/sec/internal/ims/updater/UpdateConsentManager;->mImsUpdateDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 73
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateConsentManager;->mService:Lcom/sec/internal/interfaces/ims/updater/IUpdateConsentNotifiable;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/updater/IUpdateConsentNotifiable;->onUserAccepted()V

    return-void
.end method

.method private synthetic lambda$showUpdateConsent$2(Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;)V
    .locals 3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showUpdateConsent: UpdateCheckInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateConsentManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 46
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/UpdateConsentManager;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/internal/ims/updater/UpdateConsentManager;->mContext:Landroid/content/Context;

    const v2, 0x10302d2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 53
    iget-object v1, p0, Lcom/sec/internal/ims/updater/UpdateConsentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090003

    .line 54
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 56
    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;->getContentSizeInMb()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v2, 0x7f090008

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f090006

    .line 59
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 60
    new-instance v2, Lcom/sec/internal/ims/updater/UpdateConsentManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/updater/UpdateConsentManager$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/updater/UpdateConsentManager;)V

    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f09000c

    .line 68
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 69
    new-instance v1, Lcom/sec/internal/ims/updater/UpdateConsentManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/updater/UpdateConsentManager$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/updater/UpdateConsentManager;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/updater/UpdateConsentManager;->showDialog(Landroid/app/AlertDialog$Builder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showDialog(Landroid/app/AlertDialog$Builder;)V
    .locals 1

    .line 35
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/updater/UpdateConsentManager;->mImsUpdateDialog:Landroid/app/AlertDialog;

    .line 36
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7f6

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 37
    iget-object p1, p0, Lcom/sec/internal/ims/updater/UpdateConsentManager;->mImsUpdateDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 38
    iget-object p1, p0, Lcom/sec/internal/ims/updater/UpdateConsentManager;->mImsUpdateDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 39
    iget-object p1, p0, Lcom/sec/internal/ims/updater/UpdateConsentManager;->mImsUpdateDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 40
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateConsentManager;->mImsUpdateDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public showRebootConsent()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateConsentManager;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/updater/UpdateConsentManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/updater/UpdateConsentManager$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/updater/UpdateConsentManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showStorageWarning()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateConsentManager;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/updater/UpdateConsentManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/updater/UpdateConsentManager$$ExternalSyntheticLambda7;-><init>(Lcom/sec/internal/ims/updater/UpdateConsentManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showUpdateConsent(Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateConsentManager;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/updater/UpdateConsentManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/updater/UpdateConsentManager$$ExternalSyntheticLambda6;-><init>(Lcom/sec/internal/ims/updater/UpdateConsentManager;Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
