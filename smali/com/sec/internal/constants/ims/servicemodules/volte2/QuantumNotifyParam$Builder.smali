.class public Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;
.super Ljava/lang/Object;
.source "QuantumNotifyParam.java"


# instance fields
.field mComment:Ljava/lang/String;

.field mKey:[B

.field mQtSessionId:Ljava/lang/String;

.field mRequestMark:Ljava/lang/String;

.field mStatus:I

.field mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;
    .locals 1

    .line 97
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;

    invoke-direct {v0, p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;)V

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->mComment:Ljava/lang/String;

    return-object p0
.end method

.method public setKey([B)Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->mKey:[B

    return-object p0
.end method

.method public setQtSessionId(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->mQtSessionId:Ljava/lang/String;

    return-object p0
.end method

.method public setRequestMark(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->mRequestMark:Ljava/lang/String;

    return-object p0
.end method

.method public setStatus(I)Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;
    .locals 0

    .line 101
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->mStatus:I

    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->mToken:Ljava/lang/String;

    return-object p0
.end method
