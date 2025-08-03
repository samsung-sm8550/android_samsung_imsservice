.class public Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;
.super Ljava/lang/Object;
.source "IshFile.java"


# instance fields
.field protected mMimeType:Ljava/lang/String;

.field protected mPath:Ljava/lang/String;

.field protected mSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;->mPath:Ljava/lang/String;

    .line 34
    iput-wide p2, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;->mSize:J

    .line 35
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;->mMimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMimeType()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;->mMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;->mSize:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;->mSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " MimeType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
