.class public Lcom/sec/internal/ims/gba/params/GbaData;
.super Ljava/lang/Object;
.source "GbaData.java"


# instance fields
.field cipkey:Ljava/lang/String;

.field intkey:Ljava/lang/String;

.field password:Ljava/lang/String;

.field phoneId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/sec/internal/ims/gba/params/GbaData;->phoneId:I

    .line 10
    iput-object p1, p0, Lcom/sec/internal/ims/gba/params/GbaData;->password:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/sec/internal/ims/gba/params/GbaData;->cipkey:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/sec/internal/ims/gba/params/GbaData;->intkey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCipkey()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/sec/internal/ims/gba/params/GbaData;->cipkey:Ljava/lang/String;

    return-object p0
.end method

.method public getIntkey()Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/sec/internal/ims/gba/params/GbaData;->intkey:Ljava/lang/String;

    return-object p0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/sec/internal/ims/gba/params/GbaData;->password:Ljava/lang/String;

    return-object p0
.end method

.method public getPhoneId()I
    .locals 0

    .line 32
    iget p0, p0, Lcom/sec/internal/ims/gba/params/GbaData;->phoneId:I

    return p0
.end method

.method public setPhoneId(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/sec/internal/ims/gba/params/GbaData;->phoneId:I

    return-void
.end method
