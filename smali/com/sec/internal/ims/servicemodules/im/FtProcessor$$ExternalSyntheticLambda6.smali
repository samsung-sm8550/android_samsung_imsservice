.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$10:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

.field public final synthetic f$11:Z

.field public final synthetic f$12:Ljava/lang/String;

.field public final synthetic f$13:Ljava/lang/String;

.field public final synthetic f$14:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/net/Uri;

.field public final synthetic f$4:Ljava/util/Set;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Z

.field public final synthetic f$7:Ljava/lang/String;

.field public final synthetic f$8:Z

.field public final synthetic f$9:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/lang/String;ZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$3:Landroid/net/Uri;

    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$4:Ljava/util/Set;

    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$5:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$6:Z

    iput-object p8, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$7:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$8:Z

    iput-boolean p10, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$9:Z

    iput-object p11, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$10:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    iput-boolean p12, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$11:Z

    iput-object p13, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$12:Ljava/lang/String;

    iput-object p14, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$13:Ljava/lang/String;

    iput-object p15, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$14:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 15

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$3:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$4:Ljava/util/Set;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$5:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$6:Z

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$7:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$8:Z

    iget-boolean v9, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$9:Z

    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$10:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    iget-boolean v11, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$11:Z

    iget-object v12, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$12:Ljava/lang/String;

    iget-object v13, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$13:Ljava/lang/String;

    iget-object v14, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda6;->f$14:Ljava/lang/String;

    invoke-static/range {v0 .. v14}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->$r8$lambda$oC_6zyWniSantRAbkrvnVyF18CE(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/lang/String;ZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object p0

    return-object p0
.end method
