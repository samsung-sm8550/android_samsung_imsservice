.class public Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;
.super Ljava/util/Observable;
.source "CshInfo.java"


# instance fields
.field public dataPath:Ljava/lang/String;

.field public dataProgress:J

.field public dataSize:J

.field public mimeType:Ljava/lang/String;

.field public reasonCode:I

.field public shareContactUri:Lcom/sec/ims/util/ImsUri;

.field public shareDirection:I

.field public shareId:J

.field public shareState:I

.field public shareType:I

.field public timeStamp:J

.field public videoHeight:I

.field public videoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    const/4 v2, 0x0

    .line 32
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    .line 37
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareType:I

    .line 42
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataSize:J

    .line 52
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareState:I

    .line 57
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataProgress:J

    .line 62
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->videoHeight:I

    .line 67
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->videoWidth:I

    .line 72
    sget-object v0, Lcom/sec/ims/util/ImsUri;->EMPTY:Lcom/sec/ims/util/ImsUri;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->mimeType:Ljava/lang/String;

    .line 84
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareType:I

    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
