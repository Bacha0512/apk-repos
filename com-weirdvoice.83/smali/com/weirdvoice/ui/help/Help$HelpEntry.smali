.class Lcom/weirdvoice/ui/help/Help$HelpEntry;
.super Ljava/lang/Object;
.source "Help.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/help/Help;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HelpEntry"
.end annotation


# instance fields
.field public choiceTag:I

.field public iconRes:I

.field public textRes:I

.field final synthetic this$0:Lcom/weirdvoice/ui/help/Help;


# direct methods
.method public constructor <init>(Lcom/weirdvoice/ui/help/Help;III)V
    .locals 0
    .param p2, "icon"    # I
    .param p3, "text"    # I
    .param p4, "choice"    # I

    .prologue
    .line 91
    iput-object p1, p0, Lcom/weirdvoice/ui/help/Help$HelpEntry;->this$0:Lcom/weirdvoice/ui/help/Help;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p2, p0, Lcom/weirdvoice/ui/help/Help$HelpEntry;->iconRes:I

    .line 93
    iput p3, p0, Lcom/weirdvoice/ui/help/Help$HelpEntry;->textRes:I

    .line 94
    iput p4, p0, Lcom/weirdvoice/ui/help/Help$HelpEntry;->choiceTag:I

    .line 95
    return-void
.end method
