.class public Lcom/example/deeptesting/activity/FullPageStatementActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FullPageStatementActivity.java"


# static fields
.field private static final ACTION_STATEMENT_PAGE:Ljava/lang/String; = "com.coloros.bootreg.activity.statementpage"

.field private static final BOOTREG_PACKAGE:Ljava/lang/String; = "com.coloros.bootreg"

.field private static final STATEMENT_INTENT_FLAG:Ljava/lang/String; = "statement_intent_flag"


# instance fields
.field private mApplicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/example/deeptesting/activity/FullPageStatementActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/example/deeptesting/activity/FullPageStatementActivity;

    .line 24
    invoke-direct {p0}, Lcom/example/deeptesting/activity/FullPageStatementActivity;->jumpPrivacyPage()V

    return-void
.end method

.method static synthetic access$100(Lcom/example/deeptesting/activity/FullPageStatementActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/activity/FullPageStatementActivity;

    .line 24
    iget-object v0, p0, Lcom/example/deeptesting/activity/FullPageStatementActivity;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method private jumpPrivacyPage()V
    .locals 3

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.coloros.bootreg.activity.statementpage"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.coloros.bootreg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v1, "statement_intent_flag"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/FullPageStatementActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    return-void
.end method


# virtual methods
.method public initWindowParams()V
    .locals 3

    .line 79
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/FullPageStatementActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 80
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 81
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 82
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 83
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 84
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x2000

    .line 83
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 85
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/FullPageStatementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/example/deeptesting/activity/FullPageStatementActivity;->mApplicationContext:Landroid/content/Context;

    .line 35
    const v0, 0x7f0c00b6

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/FullPageStatementActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/FullPageStatementActivity;->initWindowParams()V

    .line 37
    const v0, 0x7f0900cf

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/FullPageStatementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUIFullPageStatement;

    .line 38
    .local v0, "statement":Lcom/coui/appcompat/widget/COUIFullPageStatement;
    const v1, 0x7f0c00b5

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 39
    .local v1, "containView":Landroid/view/View;
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->setContainer(Landroid/view/View;)V

    .line 41
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->getAppStatement()Landroid/widget/TextView;

    move-result-object v2

    .line 42
    .local v2, "text":Landroid/widget/TextView;
    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    .line 44
    const v3, 0x7f1000fd

    invoke-virtual {p0, v3}, Lcom/example/deeptesting/activity/FullPageStatementActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "linkString":Ljava/lang/String;
    const v4, 0x7f1000fb

    invoke-virtual {p0, v4}, Lcom/example/deeptesting/activity/FullPageStatementActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "privacyContentString":Ljava/lang/String;
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 47
    .local v5, "spanStrBuilder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 48
    .local v6, "termsIndex":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    .line 49
    .local v7, "termsLength":I
    new-instance v8, Lcom/example/deeptesting/activity/FullPageStatementActivity$1;

    invoke-direct {v8, p0, p0}, Lcom/example/deeptesting/activity/FullPageStatementActivity$1;-><init>(Lcom/example/deeptesting/activity/FullPageStatementActivity;Landroid/content/Context;)V

    add-int v9, v6, v7

    const/16 v10, 0x21

    invoke-virtual {v5, v8, v6, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 55
    invoke-virtual {v0, v5}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->setAppStatement(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->getAppStatement()Landroid/widget/TextView;

    move-result-object v8

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 57
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->getAppStatement()Landroid/widget/TextView;

    move-result-object v8

    const v9, 0x106000d

    invoke-virtual {p0, v9}, Lcom/example/deeptesting/activity/FullPageStatementActivity;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 58
    const v8, 0x7f1000fc

    invoke-virtual {p0, v8}, Lcom/example/deeptesting/activity/FullPageStatementActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->setExitButtonText(Ljava/lang/CharSequence;)V

    .line 59
    const v8, 0x7f1000fa

    invoke-virtual {p0, v8}, Lcom/example/deeptesting/activity/FullPageStatementActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->setButtonText(Ljava/lang/CharSequence;)V

    .line 60
    new-instance v8, Lcom/example/deeptesting/activity/FullPageStatementActivity$2;

    invoke-direct {v8, p0}, Lcom/example/deeptesting/activity/FullPageStatementActivity$2;-><init>(Lcom/example/deeptesting/activity/FullPageStatementActivity;)V

    invoke-virtual {v0, v8}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->setButtonListener(Lcom/coui/appcompat/widget/COUIFullPageStatement$OnButtonClickListener;)V

    .line 76
    return-void
.end method
