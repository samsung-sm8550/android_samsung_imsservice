.class public Lcom/sec/internal/helper/picturetool/PanicCompressionDescriptor;
.super Ljava/lang/Object;
.source "PanicCompressionDescriptor.java"

# interfaces
.implements Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;


# static fields
.field private static LOG_TAG:Ljava/lang/String; = "PanicCompressionDescriptor"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next(J)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 13
    sget-object p0, Lcom/sec/internal/helper/picturetool/PanicCompressionDescriptor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "thow exception: conditions impossible to meet"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
