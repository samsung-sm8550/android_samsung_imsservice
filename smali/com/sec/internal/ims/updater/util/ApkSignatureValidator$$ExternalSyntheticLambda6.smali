.class public final synthetic Lcom/sec/internal/ims/updater/util/ApkSignatureValidator$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:[B


# direct methods
.method public synthetic constructor <init>([B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator$$ExternalSyntheticLambda6;->f$0:[B

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator$$ExternalSyntheticLambda6;->f$0:[B

    invoke-static {p0, p1}, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;->$r8$lambda$pzGC7SJ8Y6uFEjxheRBZxbxMdfs([BI)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
