.class public final synthetic Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;

.field public final synthetic f$1:Landroid/net/DnsResolver$DnsException;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;Landroid/net/DnsResolver$DnsException;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;

    iput-object p2, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator$$ExternalSyntheticLambda2;->f$1:Landroid/net/DnsResolver$DnsException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;

    iget-object p0, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator$$ExternalSyntheticLambda2;->f$1:Landroid/net/DnsResolver$DnsException;

    invoke-static {v0, p0}, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;->$r8$lambda$t-pnzRvA7wUOSHmGgCTJ6Szz0os(Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;Landroid/net/DnsResolver$DnsException;)V

    return-void
.end method
