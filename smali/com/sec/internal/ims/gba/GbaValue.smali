.class public Lcom/sec/internal/ims/gba/GbaValue;
.super Ljava/lang/Object;
.source "GbaValue.java"


# instance fields
.field private Btid:Ljava/lang/String;

.field private uicc:Z

.field private validity:Ljava/util/Date;

.field private value:[B


# direct methods
.method public constructor <init>([BLjava/util/Date;Ljava/lang/String;Z)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/sec/internal/ims/gba/GbaValue;->value:[B

    .line 19
    iput-object p2, p0, Lcom/sec/internal/ims/gba/GbaValue;->validity:Ljava/util/Date;

    .line 20
    iput-object p3, p0, Lcom/sec/internal/ims/gba/GbaValue;->Btid:Ljava/lang/String;

    .line 21
    iput-boolean p4, p0, Lcom/sec/internal/ims/gba/GbaValue;->uicc:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 78
    :cond_1
    instance-of v2, p1, Lcom/sec/internal/ims/gba/GbaValue;

    if-nez v2, :cond_2

    return v1

    .line 81
    :cond_2
    check-cast p1, Lcom/sec/internal/ims/gba/GbaValue;

    .line 82
    iget-object v2, p0, Lcom/sec/internal/ims/gba/GbaValue;->validity:Ljava/util/Date;

    if-nez v2, :cond_3

    .line 83
    iget-object v2, p1, Lcom/sec/internal/ims/gba/GbaValue;->validity:Ljava/util/Date;

    if-eqz v2, :cond_4

    return v1

    .line 86
    :cond_3
    iget-object v3, p1, Lcom/sec/internal/ims/gba/GbaValue;->validity:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 89
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/gba/GbaValue;->value:[B

    iget-object v3, p1, Lcom/sec/internal/ims/gba/GbaValue;->value:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 93
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaValue;->Btid:Ljava/lang/String;

    if-nez p0, :cond_6

    .line 94
    iget-object p0, p1, Lcom/sec/internal/ims/gba/GbaValue;->Btid:Ljava/lang/String;

    if-eqz p0, :cond_7

    return v1

    .line 97
    :cond_6
    iget-object p1, p1, Lcom/sec/internal/ims/gba/GbaValue;->Btid:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public getBtid()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaValue;->Btid:Ljava/lang/String;

    return-object p0
.end method

.method public getValidity()Ljava/util/Date;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaValue;->validity:Ljava/util/Date;

    return-object p0
.end method

.method public getValue()[B
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaValue;->value:[B

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaValue;->validity:Ljava/util/Date;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 60
    iget-object v3, p0, Lcom/sec/internal/ims/gba/GbaValue;->value:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 61
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaValue;->Btid:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public isUicc()Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/sec/internal/ims/gba/GbaValue;->uicc:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GbaValue [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/gba/GbaValue;->value:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", validity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaValue;->validity:Ljava/util/Date;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
