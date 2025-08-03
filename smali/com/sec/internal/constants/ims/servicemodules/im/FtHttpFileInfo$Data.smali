.class public Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;
.super Ljava/lang/Object;
.source "FtHttpFileInfo.java"


# instance fields
.field private final mUntil:Ljava/lang/String;

.field private final mUrl:Ljava/net/URL;


# direct methods
.method static bridge synthetic -$$Nest$fgetmUntil(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;->mUntil:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUrl(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;)Ljava/net/URL;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;->mUrl:Ljava/net/URL;

    return-object p0
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;->mUrl:Ljava/net/URL;

    .line 47
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;->mUntil:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data [mUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;->mUrl:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUntil="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;->mUntil:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
