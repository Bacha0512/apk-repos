.class public final Lcom/weirdvoice/toolbox/DatabaseCProvider$Accounts;
.super Ljava/lang/Object;
.source "DatabaseCProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/toolbox/DatabaseCProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Accounts"
.end annotation


# static fields
.field public static final ACC_ID:Ljava/lang/String; = "acc_id"

.field public static final ACTIVE:Ljava/lang/String; = "active"

.field public static final ALLOW_CONTACT_REWRITE:Ljava/lang/String; = "allow_contact_rewrite"

.field public static final CONTACT_PARAMS:Ljava/lang/String; = "contact_params"

.field public static final CONTACT_REWRITE_METHOD:Ljava/lang/String; = "contact_rewrite_method"

.field public static final CONTACT_URI_PARAMS:Ljava/lang/String; = "contact_uri_params"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final DATATYPE:Ljava/lang/String; = "datatype"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final FORCE_CONTACT:Ljava/lang/String; = "force_contact"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final KA_INTERVAL:Ljava/lang/String; = "ka_interval"

.field public static final MWI_ENABLED:Ljava/lang/String; = "mwi_enabled"

.field public static final PIDF_TUPLE_ID:Ljava/lang/String; = "pidf_tuple_id"

.field public static final PRIORITY:Ljava/lang/String; = "priority"

.field public static final PROXY:Ljava/lang/String; = "proxy"

.field public static final PUBLISH_ENABLED:Ljava/lang/String; = "publish_enabled"

.field public static final REALM:Ljava/lang/String; = "realm"

.field public static final REG_TIMEOUT:Ljava/lang/String; = "reg_timeout"

.field public static final REG_URI:Ljava/lang/String; = "reg_uri"

.field public static final SCHEME:Ljava/lang/String; = "scheme"

.field public static final TRANSPORT:Ljava/lang/String; = "transport"

.field public static final USERNAME:Ljava/lang/String; = "username"

.field public static final USE_SRTP:Ljava/lang/String; = "use_srtp"

.field public static final WIZARD:Ljava/lang/String; = "wizard"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;
    invoke-static {}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->access$0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/accounts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider$Accounts;->CONTENT_URI:Landroid/net/Uri;

    .line 440
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
