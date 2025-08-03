.class public final synthetic Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->$r8$lambda$1He_YWKmZxWeUV0FqFc-kzB-ElE(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
