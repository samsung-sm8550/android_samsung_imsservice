.class public final synthetic Lcom/sec/internal/ims/updater/util/ApkSignatureValidator$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, [Landroid/content/pm/Signature;

    invoke-static {p1}, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;->$r8$lambda$v8CZKPbwl6ke74OUxYT7FcF0EnU([Landroid/content/pm/Signature;)Landroid/content/pm/Signature;

    move-result-object p0

    return-object p0
.end method
