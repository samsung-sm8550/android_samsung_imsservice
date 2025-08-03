.class public Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# instance fields
.field public delay:I

.field public image:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    .line 100
    iput p2, p0, Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;->delay:I

    return-void
.end method
