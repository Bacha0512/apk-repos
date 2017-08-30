.class public Lcom/weirdvoice/api/SipUri$ParsedSipUriInfos;
.super Ljava/lang/Object;
.source "SipUri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/api/SipUri;
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
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/api/SipUri$ParsedSipUriInfos;->domain:Ljava/lang/String;

    .line 306
    const-string v0, "sip"

    iput-object v0, p0, Lcom/weirdvoice/api/SipUri$ParsedSipUriInfos;->scheme:Ljava/lang/String;

    .line 310
    const/16 v0, 0x13c4

    iput v0, p0, Lcom/weirdvoice/api/SipUri$ParsedSipUriInfos;->port:I

    .line 298
    return-void
.end method
