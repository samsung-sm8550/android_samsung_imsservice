.class public final synthetic Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda13;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda13;->f$0:I

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->$r8$lambda$JOyeplzQzsdQfoQANK1NyGsgBcE(ILcom/sec/ims/ImsRegistration;)Z

    move-result p0

    return p0
.end method
