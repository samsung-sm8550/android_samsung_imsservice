.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/ImCache$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache$$ExternalSyntheticLambda2;->f$0:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache$$ExternalSyntheticLambda2;->f$0:Ljava/util/HashSet;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->$r8$lambda$Kg34vg2PwBbl0uIHJ9Bew75OyC4(Ljava/util/HashSet;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    return-void
.end method
