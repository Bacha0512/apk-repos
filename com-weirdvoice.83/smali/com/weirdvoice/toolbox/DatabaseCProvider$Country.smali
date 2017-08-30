.class public final Lcom/weirdvoice/toolbox/DatabaseCProvider$Country;
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
    name = "Country"
.end annotation


# static fields
.field public static final ALIASSETUID:Ljava/lang/String; = "aliasSet_uid"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ID:Ljava/lang/String; = "id"

.field public static final IDDPREFIX:Ljava/lang/String; = "IDDPrefix"

.field public static final ISOCODE:Ljava/lang/String; = "ISOCode"

.field public static final LASTUPDATE:Ljava/lang/String; = "lastUpdate"

.field public static final MAXNUMBEROFDIGITS:Ljava/lang/String; = "maximumNumberOfDigits"

.field public static final MINIMUMDIGITS:Ljava/lang/String; = "minimumDigits"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NDDPREFIX:Ljava/lang/String; = "NDDPrefix"

.field public static final PHONEFORMAT:Ljava/lang/String; = "phoneFormat"

.field public static final REGIONNAME:Ljava/lang/String; = "regionName"

.field public static final TELEPHONYCODE:Ljava/lang/String; = "telephonyCode"

.field public static final UID:Ljava/lang/String; = "uid"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;
    invoke-static {}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->access$0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/country"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider$Country;->CONTENT_URI:Landroid/net/Uri;

    .line 217
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
