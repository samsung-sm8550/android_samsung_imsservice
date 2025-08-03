.class public final synthetic Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/net/Network;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

.field public final synthetic f$5:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

.field public final synthetic f$6:Lcom/sec/internal/interfaces/ims/core/IRegisterTask;


# direct methods
.method public synthetic constructor <init>(ILandroid/net/Network;Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda0;->f$1:Landroid/net/Network;

    iput-object p3, p0, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    iput-object p5, p0, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda0;->f$4:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iput-object p6, p0, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda0;->f$5:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    iput-object p7, p0, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda0;->f$6:Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda0;->f$1:Landroid/net/Network;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda0;->f$4:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda0;->f$5:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda0;->f$6:Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    invoke-static/range {v0 .. v6}, Lcom/sec/internal/ims/core/RegistrationUtils;->$r8$lambda$QoMHlg47L87iOBiIfaprsNIn_c4(ILandroid/net/Network;Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    return-void
.end method
