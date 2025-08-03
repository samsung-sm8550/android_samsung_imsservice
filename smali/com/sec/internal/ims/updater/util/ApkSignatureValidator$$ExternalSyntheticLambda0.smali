.class public final synthetic Lcom/sec/internal/ims/updater/util/ApkSignatureValidator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;

    check-cast p1, Landroid/content/pm/Signature;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;->$r8$lambda$FAX98rDmOZVYmmN3GhXN8nZGS7w(Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;Landroid/content/pm/Signature;)[B

    move-result-object p0

    return-object p0
.end method
