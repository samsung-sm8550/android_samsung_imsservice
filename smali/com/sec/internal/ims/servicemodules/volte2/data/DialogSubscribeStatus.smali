.class public Lcom/sec/internal/ims/servicemodules/volte2/data/DialogSubscribeStatus;
.super Ljava/lang/Object;
.source "DialogSubscribeStatus.java"


# instance fields
.field private mPhoneId:I

.field private mReasonPhrase:Ljava/lang/String;

.field private mStatusCode:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DialogSubscribeStatus;->mPhoneId:I

    .line 10
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DialogSubscribeStatus;->mStatusCode:I

    .line 11
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DialogSubscribeStatus;->mReasonPhrase:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPhoneId()I
    .locals 0

    .line 15
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DialogSubscribeStatus;->mPhoneId:I

    return p0
.end method

.method public getStatusCode()I
    .locals 0

    .line 19
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DialogSubscribeStatus;->mStatusCode:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Phone#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DialogSubscribeStatus;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " statusCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DialogSubscribeStatus;->mStatusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reasonPhrase : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DialogSubscribeStatus;->mReasonPhrase:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
