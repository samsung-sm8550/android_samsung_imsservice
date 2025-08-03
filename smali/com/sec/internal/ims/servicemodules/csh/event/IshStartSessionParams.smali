.class public Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;
.super Lcom/sec/internal/ims/servicemodules/csh/event/CshStartSessionParams;
.source "IshStartSessionParams.java"


# instance fields
.field public mfile:Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;Landroid/os/Message;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/servicemodules/csh/event/CshStartSessionParams;-><init>(Ljava/lang/String;Landroid/os/Message;)V

    .line 22
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;->mfile:Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IshStartSessionParams "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/csh/event/CshStartSessionParams;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;->mfile:Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
