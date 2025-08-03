.class public final synthetic Lcom/sec/internal/ims/updater/util/ApkSignatureValidator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator$$ExternalSyntheticLambda2;->f$0:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator$$ExternalSyntheticLambda2;->f$0:Ljava/io/File;

    check-cast p1, Landroid/content/pm/PackageManager;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;->$r8$lambda$jqlkxB1ESUMDtF-d6d6rIpJFqlQ(Ljava/io/File;Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method
