.class public Lcom/sec/internal/constants/ims/servicemodules/im/result/RejectImSessionResult;
.super Ljava/lang/Object;
.source "RejectImSessionResult.java"


# instance fields
.field public mError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

.field public mRawHandle:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/RejectImSessionResult;->mRawHandle:Ljava/lang/Object;

    .line 22
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/RejectImSessionResult;->mError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RejectImSessionResult [mRawHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/RejectImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/RejectImSessionResult;->mError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
