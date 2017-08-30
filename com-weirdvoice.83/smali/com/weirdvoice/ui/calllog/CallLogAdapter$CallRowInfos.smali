.class Lcom/weirdvoice/ui/calllog/CallLogAdapter$CallRowInfos;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallRowInfos"
.end annotation


# instance fields
.field accId:Ljava/lang/Long;

.field callIds:[J

.field number:Ljava/lang/String;

.field position:I

.field final synthetic this$0:Lcom/weirdvoice/ui/calllog/CallLogAdapter;


# direct methods
.method private constructor <init>(Lcom/weirdvoice/ui/calllog/CallLogAdapter;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/weirdvoice/ui/calllog/CallLogAdapter$CallRowInfos;->this$0:Lcom/weirdvoice/ui/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/weirdvoice/ui/calllog/CallLogAdapter;Lcom/weirdvoice/ui/calllog/CallLogAdapter$CallRowInfos;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/calllog/CallLogAdapter$CallRowInfos;-><init>(Lcom/weirdvoice/ui/calllog/CallLogAdapter;)V

    return-void
.end method
