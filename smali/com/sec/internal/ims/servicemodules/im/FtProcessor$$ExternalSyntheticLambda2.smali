.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

.field public final synthetic f$1:I

.field public final synthetic f$10:Z

.field public final synthetic f$11:Z

.field public final synthetic f$12:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

.field public final synthetic f$13:Z

.field public final synthetic f$14:Z

.field public final synthetic f$15:Ljava/lang/String;

.field public final synthetic f$16:Ljava/lang/String;

.field public final synthetic f$17:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/net/Uri;

.field public final synthetic f$4:Lcom/sec/ims/util/ImsUri;

.field public final synthetic f$5:Ljava/util/Set;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Ljava/lang/String;

.field public final synthetic f$8:Z

.field public final synthetic f$9:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;ILjava/lang/String;Landroid/net/Uri;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 0
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move v1, p2

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$1:I

    move-object v1, p3

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$3:Landroid/net/Uri;

    move-object v1, p5

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$4:Lcom/sec/ims/util/ImsUri;

    move-object v1, p6

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$5:Ljava/util/Set;

    move-object v1, p7

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$6:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$7:Ljava/lang/String;

    move v1, p9

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$8:Z

    move v1, p10

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$9:Z

    move v1, p11

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$10:Z

    move v1, p12

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$11:Z

    move-object v1, p13

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$12:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$13:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$14:Z

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$15:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$16:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$17:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 20

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$1:I

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$3:Landroid/net/Uri;

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$4:Lcom/sec/ims/util/ImsUri;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$5:Ljava/util/Set;

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$6:Ljava/lang/String;

    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$7:Ljava/lang/String;

    iget-boolean v9, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$8:Z

    iget-boolean v10, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$9:Z

    iget-boolean v11, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$10:Z

    iget-boolean v12, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$11:Z

    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$12:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    iget-boolean v14, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$13:Z

    iget-boolean v15, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$14:Z

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$15:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$16:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda2;->f$17:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v1, v19

    invoke-static/range {v1 .. v18}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->$r8$lambda$sYNBl1VHM52E-jIAlH43jMHN6kU(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;ILjava/lang/String;Landroid/net/Uri;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v0

    return-object v0
.end method
