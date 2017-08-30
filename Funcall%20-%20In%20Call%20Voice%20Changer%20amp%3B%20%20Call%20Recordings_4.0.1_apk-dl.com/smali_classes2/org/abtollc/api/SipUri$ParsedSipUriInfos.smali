.class public Lorg/abtollc/api/SipUri$ParsedSipUriInfos;
.super Ljava/lang/Object;
.source "SipUri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/api/SipUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParsedSipUriInfos"
.end annotation


# instance fields
.field public domain:Ljava/lang/String;

.field public port:I

.field public scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    const-string v0, ""

    iput-object v0, p0, Lorg/abtollc/api/SipUri$ParsedSipUriInfos;->domain:Ljava/lang/String;

    .line 304
    const-string v0, "sip"

    iput-object v0, p0, Lorg/abtollc/api/SipUri$ParsedSipUriInfos;->scheme:Ljava/lang/String;

    .line 308
    const/16 v0, 0x13c4

    iput v0, p0, Lorg/abtollc/api/SipUri$ParsedSipUriInfos;->port:I

    return-void
.end method
