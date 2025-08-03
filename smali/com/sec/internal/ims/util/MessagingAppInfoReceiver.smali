.class public Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MessagingAppInfoReceiver.java"


# static fields
.field private static final ACTION_PACKAGE_REPLACED:Ljava/lang/String; = "android.intent.action.PACKAGE_REPLACED"

.field private static final ANDROID_MESSAGE_APP:Ljava/lang/String; = "com.google.android.apps.messaging"

.field private static final DATA_SCHEME_PACKAGE:Ljava/lang/String; = "package"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SAMSUNG_MESSAGE_APP:Ljava/lang/String; = "com.samsung.android.messaging"


# instance fields
.field private final mContext:Landroid/content/Context;

.field public mDefaultMsgApp:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

.field private mFilter:Landroid/content/IntentFilter;

.field private mIsRegistered:Z

.field private final mListener:Lcom/sec/internal/ims/util/IMessagingAppInfoListener;

.field public mMsgAppVersion:Ljava/lang/String;

.field private final mPackageName_SM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/util/IMessagingAppInfoListener;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mListener:Lcom/sec/internal/ims/util/IMessagingAppInfoListener;

    .line 46
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string p2, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    invoke-virtual {p1, p2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "com.samsung.android.messaging"

    :cond_0
    iput-object p1, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mPackageName_SM:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->getDefaultMsgAPP()Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mDefaultMsgApp:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    .line 49
    invoke-virtual {p0}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->getMessagingAppVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mMsgAppVersion:Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->setIntentFilterForDefaultMsgApp()V

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mIsRegistered:Z

    return-void
.end method

.method private setIntentFilterForDefaultMsgApp()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mDefaultMsgApp:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    sget-object v1, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;->ETC:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mFilter:Landroid/content/IntentFilter;

    return-void

    .line 59
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mFilter:Landroid/content/IntentFilter;

    .line 60
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mDefaultMsgApp:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 67
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "com.google.android.apps.messaging"

    invoke-virtual {p0, v0, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mFilter:Landroid/content/IntentFilter;

    iget-object p0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mPackageName_SM:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getDefaultMsgAPP()Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;
    .locals 4

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 141
    sget-object v1, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to currentDefaultMsgApp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sms_default_application"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mPackageName_SM:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 150
    sget-object p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;->SAMSUNG_MESSAGE:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    return-object p0

    .line 151
    :cond_1
    const-string p0, "com.google.android.apps.messaging"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 152
    sget-object p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;->ANDROID_MESSAGE:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    return-object p0

    .line 154
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;->ETC:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    return-object p0
.end method

.method public getMessagingAppVersion()Ljava/lang/String;
    .locals 5

    .line 111
    const-string v0, ""

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mDefaultMsgApp:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 120
    :cond_0
    const-string v2, "com.google.android.apps.messaging"

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    goto :goto_0

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mPackageName_SM:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 127
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 130
    :catch_0
    sget-object v1, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getMessagingAppVersion(): Cannot find the package."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_2
    :goto_1
    sget-object v1, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMessagingAppVersion(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mDefaultMsgApp:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " - "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 74
    sget-object p1, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive(): intent - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->getMessagingAppVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mMsgAppVersion:Ljava/lang/String;

    .line 76
    iget-object p0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mListener:Lcom/sec/internal/ims/util/IMessagingAppInfoListener;

    invoke-interface {p0}, Lcom/sec/internal/ims/util/IMessagingAppInfoListener;->onMessagingAppPackageReplaced()V

    return-void
.end method

.method public registerReceiver()V
    .locals 3

    .line 80
    invoke-virtual {p0}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->getDefaultMsgAPP()Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    move-result-object v0

    .line 81
    iget-boolean v1, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mIsRegistered:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mDefaultMsgApp:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    if-ne v1, v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->unregisterReceiver()V

    .line 87
    iput-object v0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mDefaultMsgApp:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    .line 88
    invoke-direct {p0}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->setIntentFilterForDefaultMsgApp()V

    .line 89
    invoke-virtual {p0}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->getMessagingAppVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mMsgAppVersion:Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerReceiver(): IsRegistered = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mIsRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDefaultMsgApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mDefaultMsgApp:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mDefaultMsgApp:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    sget-object v2, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;->ETC:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    if-ne v1, v2, :cond_1

    .line 94
    const-string/jumbo p0, "registerReceiver(): does not need to registe receiver."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mIsRegistered:Z

    return-void
.end method

.method public unregisterReceiver()V
    .locals 3

    .line 103
    sget-object v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterReceiver(): IsRegistered = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mIsRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-boolean v0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mIsRegistered:Z

    :cond_0
    return-void
.end method
