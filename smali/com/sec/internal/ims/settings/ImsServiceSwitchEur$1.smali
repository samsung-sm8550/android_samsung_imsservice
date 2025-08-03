.class Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsServiceSwitchEur.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$1;->this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_1

    .line 75
    const-string p1, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 78
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$1;->this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    invoke-virtual {p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->isDefaultMessageAppInUse()Z

    move-result p1

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ImsServiceSwitchEur["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$1;->this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    iget v0, v0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange: RCS DefaultSmsObserver. ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object p2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$1;->this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    iget v0, p2, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    iget-object p2, p2, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    const-string v1, "imsswitch"

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 83
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 84
    const-string v0, "defaultsms"

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$1;->this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mDefaultSms:Z

    .line 86
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$1;->this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    iput-boolean v2, p1, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mDefaultSms:Z

    .line 89
    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 91
    :goto_0
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 93
    :cond_1
    sget-object p1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    iget-object p2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$1;->this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    iget p2, p2, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 94
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$1;->this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    iget-object p1, p1, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$1;->this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    iget p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    .line 95
    const-string p2, "content://com.sec.ims.settings/imsswitch"

    invoke-static {p2, p0}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p0

    const/4 p2, 0x0

    .line 94
    invoke-virtual {p1, p0, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_2
    return-void
.end method
