.class public Lcom/sec/internal/ims/gba/Gba;
.super Ljava/lang/Object;
.source "Gba.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Gba"


# instance fields
.field private gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

.field private sdf:Ljava/text/SimpleDateFormat;

.field private threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/gba/Gba;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/sec/internal/ims/gba/Gba;->sdf:Ljava/text/SimpleDateFormat;

    .line 28
    iput p1, p0, Lcom/sec/internal/ims/gba/Gba;->threshold:I

    .line 29
    new-instance p1, Lcom/sec/internal/ims/gba/GbaStore;

    invoke-direct {p1}, Lcom/sec/internal/ims/gba/GbaStore;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 137
    :cond_1
    instance-of v2, p1, Lcom/sec/internal/ims/gba/Gba;

    if-nez v2, :cond_2

    return v1

    .line 140
    :cond_2
    check-cast p1, Lcom/sec/internal/ims/gba/Gba;

    .line 141
    iget-object p0, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    if-nez p0, :cond_3

    .line 142
    iget-object p0, p1, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    if-eqz p0, :cond_4

    return v1

    .line 145
    :cond_3
    iget-object p1, p1, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getGbaValue([B[B)Lcom/sec/internal/ims/gba/GbaValue;
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/gba/Gba;->getGbaValue([B[BI)Lcom/sec/internal/ims/gba/GbaValue;

    move-result-object p0

    return-object p0
.end method

.method public getGbaValue([B[BI)Lcom/sec/internal/ims/gba/GbaValue;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/gba/Gbakey;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/ims/gba/Gbakey;-><init>([B[BI)V

    .line 79
    iget-object p1, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/gba/GbaStore;->hasKey(Lcom/sec/internal/ims/gba/Gbakey;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/gba/GbaStore;->getKeys(Lcom/sec/internal/ims/gba/Gbakey;)Lcom/sec/internal/ims/gba/GbaValue;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lcom/sec/internal/ims/gba/GbaValue;->getValidity()Ljava/util/Date;

    move-result-object p2

    .line 86
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/gba/Gba;->isKeyExpired(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 88
    iget-object p0, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/gba/GbaStore;->removeKey(Lcom/sec/internal/ims/gba/Gbakey;)V

    return-object v0

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 125
    iget-object p0, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    const/16 v0, 0x1f

    add-int/2addr v0, p0

    return v0
.end method

.method public isKeyExpired(Ljava/util/Date;)Z
    .locals 9

    .line 97
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 98
    iget-object v1, p0, Lcom/sec/internal/ims/gba/Gba;->sdf:Ljava/text/SimpleDateFormat;

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget v5, p0, Lcom/sec/internal/ims/gba/Gba;->threshold:I

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 101
    sget-object v1, Lcom/sec/internal/ims/gba/Gba;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current Date and time in GMT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/gba/Gba;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  key life time in GMT: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/gba/Gba;->sdf:Ljava/text/SimpleDateFormat;

    .line 102
    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 101
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public removeGbaKey([B[BI)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/gba/Gbakey;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/ims/gba/Gbakey;-><init>([B[BI)V

    .line 115
    iget-object p1, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/gba/GbaStore;->hasKey(Lcom/sec/internal/ims/gba/Gbakey;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 118
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/gba/GbaStore;->removeKey(Lcom/sec/internal/ims/gba/Gbakey;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public storeGbaKey([B[B[BLjava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 40
    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/gba/Gba;->storeGbaKey([B[B[BLjava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public storeGbaKey([B[B[BLjava/lang/String;Ljava/lang/String;ZI)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/sec/internal/ims/gba/Gba;->sdf:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/gba/Gba;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    .line 51
    invoke-virtual {p4}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p4, 0x0

    .line 56
    :goto_0
    invoke-virtual {p0, p4}, Lcom/sec/internal/ims/gba/Gba;->isKeyExpired(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/sec/internal/ims/gba/Gbakey;

    invoke-direct {v0, p2, p1, p7}, Lcom/sec/internal/ims/gba/Gbakey;-><init>([B[BI)V

    .line 59
    new-instance p1, Lcom/sec/internal/ims/gba/GbaValue;

    invoke-direct {p1, p3, p4, p5, p6}, Lcom/sec/internal/ims/gba/GbaValue;-><init>([BLjava/util/Date;Ljava/lang/String;Z)V

    .line 62
    iget-object p0, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/gba/GbaStore;->putKeys(Lcom/sec/internal/ims/gba/Gbakey;Lcom/sec/internal/ims/gba/GbaValue;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gba [gbaStore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/gba/Gba;->gbaStore:Lcom/sec/internal/ims/gba/GbaStore;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
