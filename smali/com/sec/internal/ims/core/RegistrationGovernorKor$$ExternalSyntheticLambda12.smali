.class public final synthetic Lcom/sec/internal/ims/core/RegistrationGovernorKor$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$$ExternalSyntheticLambda12;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$$ExternalSyntheticLambda12;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->$r8$lambda$2tXTk4eZwhk_s_-O6pacys5f5nY(Lcom/sec/internal/ims/core/RegistrationGovernorKor;Lcom/sec/internal/ims/servicemodules/im/ImModule;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
