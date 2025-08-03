.class public Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;
.super Ljava/lang/Object;
.source "ImSendComposingParams.java"


# instance fields
.field public final mInterval:I

.field public final mIsComposing:Z

.field public final mRawHandle:Ljava/lang/Object;

.field public final mUserAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;ZILjava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;->mRawHandle:Ljava/lang/Object;

    .line 22
    iput-boolean p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;->mIsComposing:Z

    .line 23
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;->mInterval:I

    .line 24
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;->mUserAlias:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImSendComposingParams [mRawHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsComposing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;->mIsComposing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;->mInterval:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
