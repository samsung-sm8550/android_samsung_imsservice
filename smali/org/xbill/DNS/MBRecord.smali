.class public Lorg/xbill/DNS/MBRecord;
.super Lorg/xbill/DNS/SingleNameBase;
.source "MBRecord.java"


# static fields
.field private static final serialVersionUID:J = 0x7634916db6a8753L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/xbill/DNS/SingleNameBase;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 0

    .line 19
    new-instance p0, Lorg/xbill/DNS/MBRecord;

    invoke-direct {p0}, Lorg/xbill/DNS/MBRecord;-><init>()V

    return-object p0
.end method
