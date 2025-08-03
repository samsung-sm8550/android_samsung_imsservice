.class public Lcom/sec/internal/ims/gba/BsfResponse;
.super Ljava/lang/Object;
.source "BsfResponse.java"


# instance fields
.field private mBtid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "btid"
    .end annotation
.end field

.field private mLifetime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lifetime"
    .end annotation
.end field

.field private mXmlns:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "@xmlns"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBtid()Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/sec/internal/ims/gba/BsfResponse;->mBtid:Ljava/lang/String;

    return-object p0
.end method

.method public getLifetime()Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/sec/internal/ims/gba/BsfResponse;->mLifetime:Ljava/lang/String;

    return-object p0
.end method

.method public getmXmlns()Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/sec/internal/ims/gba/BsfResponse;->mXmlns:Ljava/lang/String;

    return-object p0
.end method
