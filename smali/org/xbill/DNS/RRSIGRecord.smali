.class public Lorg/xbill/DNS/RRSIGRecord;
.super Lorg/xbill/DNS/SIGBase;
.source "RRSIGRecord.java"


# static fields
.field private static final serialVersionUID:J = -0x243590b6b5a8564dL


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/xbill/DNS/SIGBase;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 0

    .line 26
    new-instance p0, Lorg/xbill/DNS/RRSIGRecord;

    invoke-direct {p0}, Lorg/xbill/DNS/RRSIGRecord;-><init>()V

    return-object p0
.end method
