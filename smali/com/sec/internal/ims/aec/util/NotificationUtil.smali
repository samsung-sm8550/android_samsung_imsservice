.class public Lcom/sec/internal/ims/aec/util/NotificationUtil;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NotificationUtil"

.field private static final MAX_WAIT_TIME:I = 0xea60

.field private static final TIME_UNIT:I = 0x3e8


# instance fields
.field protected mAppIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneId:I

.field protected mPrevTimestamp:Ljava/util/Date;

.field private final mServiceSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/NotificationUtil;->mServiceSet:Ljava/util/Set;

    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/sec/internal/ims/aec/util/NotificationUtil;->mPrevTimestamp:Ljava/util/Date;

    .line 26
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/aec/util/NotificationUtil;->mAppIdSet:Ljava/util/Set;

    .line 29
    iput p1, p0, Lcom/sec/internal/ims/aec/util/NotificationUtil;->mPhoneId:I

    .line 31
    const-string p0, ","

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 33
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public calcWaitTime(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 74
    const-string v0, "calcWaitTime: "

    const v1, 0xea60

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/aec/util/NotificationUtil;->getAppIdSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    .line 75
    iget-object v2, p0, Lcom/sec/internal/ims/aec/util/NotificationUtil;->mAppIdSet:Ljava/util/Set;

    invoke-interface {p2, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 76
    iget-object v2, p0, Lcom/sec/internal/ims/aec/util/NotificationUtil;->mServiceSet:Ljava/util/Set;

    invoke-interface {p2, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 80
    :cond_0
    new-instance p2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p2, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 81
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/util/NotificationUtil;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    sub-long/2addr v2, p1

    .line 83
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    long-to-int v2, v2

    .line 84
    iget-object v3, p0, Lcom/sec/internal/ims/aec/util/NotificationUtil;->mPrevTimestamp:Ljava/util/Date;

    if-eqz v3, :cond_1

    .line 85
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    long-to-int p1, p1

    add-int/2addr v2, p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x3e8

    .line 87
    div-int/2addr v2, p1

    mul-int/2addr v2, p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 88
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 90
    sget-object p2, Lcom/sec/internal/ims/aec/util/NotificationUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " milliseconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sec/internal/ims/aec/util/NotificationUtil;->mPhoneId:I

    invoke-static {p2, v2, v3}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 93
    :goto_1
    sget-object p2, Lcom/sec/internal/ims/aec/util/NotificationUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/sec/internal/ims/aec/util/NotificationUtil;->mPhoneId:I

    invoke-static {p2, p1, p0}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    return v1
.end method

.method public clearAppId()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/NotificationUtil;->mAppIdSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/NotificationUtil;->mPrevTimestamp:Ljava/util/Date;

    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/NotificationUtil;->mAppIdSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_1

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 117
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getAppIdSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 100
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-static {p0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p0
.end method

.method protected getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4

    const/4 v0, 0x0

    .line 56
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    sget-object p1, Lcom/sec/internal/ims/aec/util/NotificationUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getDate: no timeStamp"

    iget v2, p0, Lcom/sec/internal/ims/aec/util/NotificationUtil;->mPhoneId:I

    invoke-static {p1, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    .line 59
    :cond_0
    const-string v1, "Z"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 61
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 63
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 65
    :goto_0
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 67
    :catch_0
    sget-object p1, Lcom/sec/internal/ims/aec/util/NotificationUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getDate: parse exception"

    iget p0, p0, Lcom/sec/internal/ims/aec/util/NotificationUtil;->mPhoneId:I

    invoke-static {p1, v1, p0}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public updateAppId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/util/NotificationUtil;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/NotificationUtil;->mPrevTimestamp:Ljava/util/Date;

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/NotificationUtil;->mAppIdSet:Ljava/util/Set;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/aec/util/NotificationUtil;->getAppIdSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 130
    sget-object p1, Lcom/sec/internal/ims/aec/util/NotificationUtil;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateAppId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/NotificationUtil;->mAppIdSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Lcom/sec/internal/ims/aec/util/NotificationUtil;->mPhoneId:I

    invoke-static {p1, p2, p0}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 40
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/util/NotificationUtil;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 41
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/aec/util/NotificationUtil;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    if-nez p2, :cond_0

    .line 44
    sget-object p1, Lcom/sec/internal/ims/aec/util/NotificationUtil;->LOG_TAG:Ljava/lang/String;

    const-string p2, "discard incorrect syntax"

    iget p0, p0, Lcom/sec/internal/ims/aec/util/NotificationUtil;->mPhoneId:I

    invoke-static {p1, p2, p0}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    .line 45
    invoke-virtual {p2, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 48
    sget-object p1, Lcom/sec/internal/ims/aec/util/NotificationUtil;->LOG_TAG:Ljava/lang/String;

    const-string p2, "discard outdated notification"

    iget p0, p0, Lcom/sec/internal/ims/aec/util/NotificationUtil;->mPhoneId:I

    invoke-static {p1, p2, p0}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method
