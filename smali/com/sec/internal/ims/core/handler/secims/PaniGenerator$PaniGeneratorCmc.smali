.class public Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorCmc;
.super Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;
.source "PaniGenerator.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorCmc;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;-><init>(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)V

    return-void
.end method


# virtual methods
.method protected getWifiPaniFormatFromSetting(I)Ljava/lang/String;
    .locals 0

    .line 626
    const-string p0, "<PREFIX><NODE_ID>"

    return-object p0
.end method
