.class public Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;
.super Ljava/lang/Object;
.source "IdcExtra.java"


# instance fields
.field private mReqId:I

.field private mSdp:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmReqId(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;->mReqId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSdp(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;->mSdp:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;
    .locals 2

    .line 132
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra-IA;)V

    return-object v0
.end method

.method public setReqId(I)Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;
    .locals 0

    .line 128
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;->mReqId:I

    return-object p0
.end method

.method public setSdp(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;->mSdp:Ljava/lang/String;

    return-object p0
.end method
