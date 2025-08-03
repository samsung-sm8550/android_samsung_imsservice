.class public Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "McsContactSyncIntentReceiver.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final mMcsContactSync:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

.field private final mPhoneId:I


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;I)V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    const-class v0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;->LOG_TAG:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;->mMcsContactSync:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    .line 23
    iput p2, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;->mPhoneId:I

    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 27
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 28
    const-string v0, "com.samsung.ims.mcs.SHARE_ACCESS_TOKEN"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method public getPackageIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 33
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 34
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    const-string v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    const-string/jumbo v0, "package"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-object p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.ims.mcs.SHARE_ACCESS_TOKEN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 43
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 47
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;->mPhoneId:I

    const-string/jumbo v1, "onReceive: ACTION_MCS_SHARE_ACCESS_TOKEN"

    invoke-static {p2, v0, v1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;->mPhoneId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",CS:RCV_TK_REQ"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const v0, -0x6ffefffc

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 49
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;->mMcsContactSync:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    const/4 p2, 0x4

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 50
    :cond_1
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 52
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 53
    const-string v0, "com.skt.contactsync"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 54
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;->mPhoneId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",CS:RCV_PKG_ACT"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, -0x6ffefffb

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 56
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;->mMcsContactSync:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_0
    return-void
.end method
