.class public final synthetic Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;Ljava/util/List;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;

    iput-object p2, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput p3, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;

    iget-object v1, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget p0, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->$r8$lambda$bKf6mnbp4F52T6doYtYIHwAmcgw(Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;Ljava/util/List;I)V

    return-void
.end method
