.class Lcom/sec/internal/helper/userconsent/HyperlinkUtils$1;
.super Landroid/text/style/ClickableSpan;
.source "HyperlinkUtils.java"


# instance fields
.field final synthetic val$hyperlinkOnClickListener:Lcom/sec/internal/helper/userconsent/IHyperlinkOnClickListener;

.field final synthetic val$span:Landroid/text/style/URLSpan;


# direct methods
.method constructor <init>(Lcom/sec/internal/helper/userconsent/IHyperlinkOnClickListener;Landroid/text/style/URLSpan;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/sec/internal/helper/userconsent/HyperlinkUtils$1;->val$hyperlinkOnClickListener:Lcom/sec/internal/helper/userconsent/IHyperlinkOnClickListener;

    iput-object p2, p0, Lcom/sec/internal/helper/userconsent/HyperlinkUtils$1;->val$span:Landroid/text/style/URLSpan;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/sec/internal/helper/userconsent/HyperlinkUtils$1;->val$hyperlinkOnClickListener:Lcom/sec/internal/helper/userconsent/IHyperlinkOnClickListener;

    iget-object p0, p0, Lcom/sec/internal/helper/userconsent/HyperlinkUtils$1;->val$span:Landroid/text/style/URLSpan;

    invoke-virtual {p0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/sec/internal/helper/userconsent/IHyperlinkOnClickListener;->onClick(Landroid/view/View;Landroid/net/Uri;)V

    return-void
.end method
