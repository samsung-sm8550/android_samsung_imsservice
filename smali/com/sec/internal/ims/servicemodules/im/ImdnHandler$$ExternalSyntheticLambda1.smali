.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/ImdnHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImdnHandler;->$r8$lambda$QzsMcVCkF0l-mcKG0VxAoIa-qwo(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)I

    move-result p0

    return p0
.end method
