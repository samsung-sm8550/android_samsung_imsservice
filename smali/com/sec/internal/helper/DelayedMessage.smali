.class public Lcom/sec/internal/helper/DelayedMessage;
.super Ljava/lang/Object;
.source "DelayedMessage.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/sec/internal/helper/DelayedMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private final msg:Landroid/os/Message;

.field private final timeout:J


# direct methods
.method public static synthetic $r8$lambda$XEHoOxjrTzl7KYwsI4UI9yQHLYY(Landroid/os/Message;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/helper/DelayedMessage;->lambda$toString$0(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/os/Message;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sec/internal/helper/DelayedMessage;->msg:Landroid/os/Message;

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/sec/internal/helper/DelayedMessage;->timeout:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Message;J)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/sec/internal/helper/DelayedMessage;->msg:Landroid/os/Message;

    .line 17
    iput-wide p2, p0, Lcom/sec/internal/helper/DelayedMessage;->timeout:J

    return-void
.end method

.method private static synthetic lambda$toString$0(Landroid/os/Message;)Ljava/lang/Object;
    .locals 0

    .line 76
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object p0
.end method

.method private printRemain(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-gtz p0, :cond_0

    .line 89
    const-string p0, ""

    return-object p0

    .line 91
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " (expired in: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "msec)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/sec/internal/helper/DelayedMessage;)I
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/sec/internal/helper/DelayedMessage;->timeout:J

    iget-wide p0, p1, Lcom/sec/internal/helper/DelayedMessage;->timeout:J

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/sec/internal/helper/DelayedMessage;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/DelayedMessage;->compareTo(Lcom/sec/internal/helper/DelayedMessage;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 51
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 54
    :cond_2
    check-cast p1, Lcom/sec/internal/helper/DelayedMessage;

    .line 56
    iget-object v2, p0, Lcom/sec/internal/helper/DelayedMessage;->msg:Landroid/os/Message;

    if-nez v2, :cond_4

    .line 57
    iget-object p0, p1, Lcom/sec/internal/helper/DelayedMessage;->msg:Landroid/os/Message;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 59
    :cond_4
    iget-object p1, p1, Lcom/sec/internal/helper/DelayedMessage;->msg:Landroid/os/Message;

    .line 60
    iget v3, v2, Landroid/os/Message;->what:I

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_5

    .line 61
    invoke-virtual {v2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v3

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/sec/internal/helper/DelayedMessage;->msg:Landroid/os/Message;

    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 62
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p0, p0, Lcom/sec/internal/helper/DelayedMessage;->msg:Landroid/os/Message;

    iget v2, p0, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_5

    iget p0, p0, Landroid/os/Message;->arg2:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p0, p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    return v0
.end method

.method public getMsg()Landroid/os/Message;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sec/internal/helper/DelayedMessage;->msg:Landroid/os/Message;

    return-object p0
.end method

.method public getTimeout()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/sec/internal/helper/DelayedMessage;->timeout:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/sec/internal/helper/DelayedMessage;->msg:Landroid/os/Message;

    iget-wide v1, p0, Lcom/sec/internal/helper/DelayedMessage;->timeout:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/sec/internal/helper/DelayedMessage;->msg:Landroid/os/Message;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/helper/DelayedMessage$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/helper/DelayedMessage$$ExternalSyntheticLambda0;-><init>()V

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/helper/DelayedMessage$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/sec/internal/helper/DelayedMessage$$ExternalSyntheticLambda1;-><init>()V

    .line 73
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/helper/DelayedMessage$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/sec/internal/helper/DelayedMessage$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 74
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    iget-object v2, p0, Lcom/sec/internal/helper/DelayedMessage;->msg:Landroid/os/Message;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/helper/DelayedMessage$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/sec/internal/helper/DelayedMessage$$ExternalSyntheticLambda3;-><init>()V

    .line 76
    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/helper/DelayedMessage$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/sec/internal/helper/DelayedMessage$$ExternalSyntheticLambda4;-><init>()V

    .line 77
    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/helper/DelayedMessage$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/sec/internal/helper/DelayedMessage$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    .line 78
    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DelayedMessage: [target: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", what: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/helper/DelayedMessage;->msg:Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", obj: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", arg1: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/helper/DelayedMessage;->msg:Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", arg2: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/helper/DelayedMessage;->msg:Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", timeout: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/sec/internal/helper/DelayedMessage;->timeout:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/sec/internal/helper/DelayedMessage;->timeout:J

    .line 84
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/helper/DelayedMessage;->printRemain(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
