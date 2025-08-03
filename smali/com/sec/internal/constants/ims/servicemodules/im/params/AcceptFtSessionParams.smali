.class public Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;
.super Ljava/lang/Object;
.source "AcceptFtSessionParams.java"


# instance fields
.field public mCallback:Landroid/os/Message;

.field public mEnd:J

.field public mFilePath:Ljava/lang/String;

.field public mMessageId:I

.field public mRawHandle:Ljava/lang/Object;

.field public mStart:J

.field public mUserAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;JJ)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mMessageId:I

    .line 30
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mRawHandle:Ljava/lang/Object;

    .line 31
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mFilePath:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mUserAlias:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mCallback:Landroid/os/Message;

    .line 34
    iput-wide p6, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mStart:J

    .line 35
    iput-wide p8, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mEnd:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AcceptFtSessionParams [mMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mMessageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRawHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mStart:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mEnd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mFilePath:Ljava/lang/String;

    .line 44
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mUserAlias:Ljava/lang/String;

    .line 45
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mCallback:Landroid/os/Message;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
