.class public Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;
.super Ljava/lang/Object;
.source "Result.java"


# instance fields
.field private final mCode:I

.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;->mCode:I

    .line 94
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 98
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;->mCode:I

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReasonHeader{mCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;->mText:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
