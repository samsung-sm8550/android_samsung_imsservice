.class public final synthetic Lcom/sec/internal/ims/config/workflow/WorkflowUpBase$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    check-cast p1, Landroid/net/NetworkCapabilities;

    invoke-static {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->$r8$lambda$euNp6Gc94soak95Me_Qtftc6MEA(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method
