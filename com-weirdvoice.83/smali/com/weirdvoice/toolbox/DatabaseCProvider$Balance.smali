.class public final Lcom/weirdvoice/toolbox/DatabaseCProvider$Balance;
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
    name = "Balance"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ID:Ljava/lang/String; = "id"

.field public static final PLAN_END_DATE:Ljava/lang/String; = "planEndDate"

.field public static final PLAN_IN_MINUTES:Ljava/lang/String; = "planInMinutes"

.field public static final PLAN_IN_MINUTES_REM:Ljava/lang/String; = "planInMinutesRem"

.field public static final PLAN_NAME:Ljava/lang/String; = "planName"

.field public static final PLAN_OUT_MINUTES:Ljava/lang/String; = "planOutMinutes"

.field public static final PLAN_OUT_MINUTES_REM:Ljava/lang/String; = "planOutMinutesRem"

.field public static final PLAN_START_DATE:Ljava/lang/String; = "planStartDate"

.field public static final PREPAID:Ljava/lang/String; = "prepaid"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;
    invoke-static {}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->access$0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/balance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider$Balance;->CONTENT_URI:Landroid/net/Uri;

    .line 151
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
