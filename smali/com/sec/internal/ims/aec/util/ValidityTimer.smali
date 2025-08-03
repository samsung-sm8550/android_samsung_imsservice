.class public Lcom/sec/internal/ims/aec/util/ValidityTimer;
.super Ljava/lang/Object;
.source "ValidityTimer.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ValidityTimer"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPhoneId:I

.field mPollIntervalPendingIntent:Landroid/app/PendingIntent;

.field mTokenValidityPendingIntent:Landroid/app/PendingIntent;

.field mValidityReceiver:Landroid/content/BroadcastReceiver;

.field mVersionValidityPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/aec/util/ValidityTimer;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mVersionValidityPendingIntent:Landroid/app/PendingIntent;

    .line 24
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mTokenValidityPendingIntent:Landroid/app/PendingIntent;

    .line 25
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mPollIntervalPendingIntent:Landroid/app/PendingIntent;

    .line 28
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mContext:Landroid/content/Context;

    .line 29
    iput p2, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mPhoneId:I

    .line 31
    new-instance p2, Lcom/sec/internal/ims/aec/util/ValidityTimer$1;

    invoke-direct {p2, p0, p3}, Lcom/sec/internal/ims/aec/util/ValidityTimer$1;-><init>(Lcom/sec/internal/ims/aec/util/ValidityTimer;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mValidityReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    const/4 p3, 0x4

    invoke-virtual {p1, p2, p0, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected getActionPollIntervalTimer()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.sec.imsservice.aec.action.POLL_INTERVAL_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getActionTokenValidityTimeout()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.sec.imsservice.aec.action.TOKEN_VALIDITY_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getActionVersionValidityTimeout()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.sec.imsservice.aec.action.VERSION_VALIDITY_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->getActionVersionValidityTimeout()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->getActionTokenValidityTimeout()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->getActionPollIntervalTimer()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public startPollIntervalTimer(I)V
    .locals 5

    if-lez p1, :cond_0

    .line 101
    sget-object v0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPollIntervalTimer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopPollIntervalTimer()V

    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->getActionPollIntervalTimer()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mPollIntervalPendingIntent:Landroid/app/PendingIntent;

    .line 105
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mContext:Landroid/content/Context;

    int-to-long v1, p1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-static {p0, v0, v1, v2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    :cond_0
    return-void
.end method

.method public startTokenValidityTimer(I)V
    .locals 5

    if-lez p1, :cond_0

    .line 91
    sget-object v0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTokenValidityTimer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopTokenValidityTimer()V

    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->getActionTokenValidityTimeout()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mTokenValidityPendingIntent:Landroid/app/PendingIntent;

    .line 95
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mContext:Landroid/content/Context;

    int-to-long v1, p1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-static {p0, v0, v1, v2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    :cond_0
    return-void
.end method

.method public startVersionValidityTimer(I)V
    .locals 5

    if-lez p1, :cond_0

    .line 81
    sget-object v0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startVersionValidityTimer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopVersionValidityTimer()V

    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->getActionVersionValidityTimeout()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mVersionValidityPendingIntent:Landroid/app/PendingIntent;

    .line 85
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mContext:Landroid/content/Context;

    int-to-long v1, p1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-static {p0, v0, v1, v2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    :cond_0
    return-void
.end method

.method public stopPollIntervalTimer()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mPollIntervalPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 125
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mPollIntervalPendingIntent:Landroid/app/PendingIntent;

    :cond_0
    return-void
.end method

.method public stopTokenValidityTimer()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mTokenValidityPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mTokenValidityPendingIntent:Landroid/app/PendingIntent;

    :cond_0
    return-void
.end method

.method public stopVersionValidityTimer()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mVersionValidityPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mVersionValidityPendingIntent:Landroid/app/PendingIntent;

    :cond_0
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mValidityReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mValidityReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method
