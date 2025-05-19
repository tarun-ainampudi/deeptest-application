.class public Lcom/example/deeptesting/activity/StatusActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "StatusActivity.java"


# static fields
.field public static final STATUS_APPLICATION_FAIL_0:I = -0x3e8

.field public static final STATUS_APPLICATION_FAIL_1:I = -0x3e9

.field public static final STATUS_APPLICATION_FAIL_2:I = -0x3ea

.field public static final STATUS_APPLICATION_FAIL_3:I = -0x3eb

.field public static final STATUS_APPLICATION_FAIL_4:I = -0x3ec

.field public static final STATUS_APPLICATION_FAIL_5:I = -0x3ed

.field public static final STATUS_APPLICATION_FAIL_6:I = -0x3f4

.field public static final STATUS_APPLICATION_NOSUBMITTED:I = -0x3f0

.field public static final STATUS_APPLICATION_SUBMITTED:I = -0x3ee

.field public static final STATUS_APPLICATION_SUCCESS:I = 0x0

.field public static final STATUS_GOV_CUSTOM:I = 0xa

.field public static final STATUS_INVALID_LOGIN:I = -0x3ef

.field public static final STATUS_MOBILE_CUSTOM:I = 0xb

.field public static final STATUS_NETWORK_TIMEOUT:I = 0x64

.field public static final STATUS_NOT_APPROVED:I = -0x3f5

.field public static final STATUS_QUERY_SUCCESS:I = 0xc8

.field public static final STATUS_VERIFICATION_SUCCESS:I = 0xc8

.field public static final TAG:Ljava/lang/String; = "Status"


# instance fields
.field private mComplete:Landroid/widget/Button;

.field private mCouiAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mHandler:Landroid/os/Handler;

.field private mProgressDialog:Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

.field private mRoot:Landroid/widget/RelativeLayout;

.field private mStartUnlock:Landroid/widget/TextView;

.field private mStatusDesc:Landroid/widget/TextView;

.field private mStatusMsg:Landroid/widget/TextView;

.field private mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 63
    new-instance v0, Lcom/example/deeptesting/activity/StatusActivity$1;

    invoke-direct {v0, p0}, Lcom/example/deeptesting/activity/StatusActivity$1;-><init>(Lcom/example/deeptesting/activity/StatusActivity;)V

    iput-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/example/deeptesting/activity/StatusActivity;)Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/activity/StatusActivity;

    .line 34
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mProgressDialog:Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/example/deeptesting/activity/StatusActivity;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/activity/StatusActivity;

    .line 34
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mCouiAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/example/deeptesting/activity/StatusActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/activity/StatusActivity;

    .line 34
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mRoot:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/example/deeptesting/activity/StatusActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/activity/StatusActivity;

    .line 34
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public initWindowParams()V
    .locals 3

    .line 231
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/StatusActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 232
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 233
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 234
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 235
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 236
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x2000

    .line 235
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 237
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 97
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f0c00b7

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/StatusActivity;->setContentView(I)V

    .line 99
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/StatusActivity;->initWindowParams()V

    .line 101
    const v0, 0x7f0901e4

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/StatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    iput-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    .line 102
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    const v1, 0x7f08016b

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setNavigationIcon(I)V

    .line 103
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    new-instance v1, Lcom/example/deeptesting/activity/StatusActivity$2;

    invoke-direct {v1, p0}, Lcom/example/deeptesting/activity/StatusActivity$2;-><init>(Lcom/example/deeptesting/activity/StatusActivity;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    const v1, 0x7f100102

    invoke-virtual {p0, v1}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    const v0, 0x7f09007e

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/StatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mCouiAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 112
    const v0, 0x7f090164

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/StatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mRoot:Landroid/widget/RelativeLayout;

    .line 113
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mRoot:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/example/deeptesting/activity/StatusActivity$3;

    invoke-direct {v1, p0}, Lcom/example/deeptesting/activity/StatusActivity$3;-><init>(Lcom/example/deeptesting/activity/StatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 122
    const v0, 0x7f09013a

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/StatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mComplete:Landroid/widget/Button;

    .line 123
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mComplete:Landroid/widget/Button;

    new-instance v1, Lcom/example/deeptesting/activity/StatusActivity$4;

    invoke-direct {v1, p0}, Lcom/example/deeptesting/activity/StatusActivity$4;-><init>(Lcom/example/deeptesting/activity/StatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v0, 0x7f0901ae

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/StatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStatusMsg:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f0901ad

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/StatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStatusDesc:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0901a9

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/StatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStartUnlock:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStartUnlock:Landroid/widget/TextView;

    new-instance v1, Lcom/example/deeptesting/activity/StatusActivity$5;

    invoke-direct {v1, p0}, Lcom/example/deeptesting/activity/StatusActivity$5;-><init>(Lcom/example/deeptesting/activity/StatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/StatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "resultCode"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, -0x3f0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_0

    const v2, 0x7f100111

    const v3, 0x7f10001d

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 206
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStatusMsg:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStatusDesc:Landroid/widget/TextView;

    const v1, 0x7f100092

    invoke-virtual {p0, v1}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 170
    :pswitch_0
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStatusMsg:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStatusDesc:Landroid/widget/TextView;

    const v1, 0x7f100094

    invoke-virtual {p0, v1}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    goto/16 :goto_0

    .line 166
    :pswitch_1
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStatusMsg:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStatusDesc:Landroid/widget/TextView;

    const v1, 0x7f100091

    invoke-virtual {p0, v1}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    goto/16 :goto_0

    .line 179
    :pswitch_2
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStatusMsg:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStatusDesc:Landroid/widget/TextView;

    const v1, 0x7f10009a

    invoke-virtual {p0, v1}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    goto/16 :goto_0

    .line 183
    :pswitch_3
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStatusMsg:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStatusDesc:Landroid/widget/TextView;

    const v1, 0x7f100099

    invoke-virtual {p0, v1}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    goto/16 :goto_0

    .line 187
    :pswitch_4
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStatusMsg:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStatusDesc:Landroid/widget/TextView;

    const v1, 0x7f100096

    invoke-virtual {p0, v1}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    goto/16 :goto_0

    .line 191
    :pswitch_5
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStatusMsg:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStatusDesc:Landroid/widget/TextView;

    const v1, 0x7f100090

    invoke-virtual {p0, v1}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    goto/16 :goto_0

    .line 198
    :pswitch_6
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStatusMsg:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStatusDesc:Landroid/widget/TextView;

    const v1, 0x7f100093

    invoke-virtual {p0, v1}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    goto/16 :goto_0

    .line 202
    :pswitch_7
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStatusMsg:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    sput-boolean v1, Lcom/example/deeptesting/activity/MainActivity;->mApplyRecord:Z

    .line 204
    goto/16 :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStatusMsg:Landroid/widget/TextView;

    const v1, 0x7f100112

    invoke-virtual {p0, v1}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStartUnlock:Landroid/widget/TextView;

    const v1, 0x7f100101

    invoke-virtual {p0, v1}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStatusMsg:Landroid/widget/TextView;

    const v1, 0x7f1000e8

    invoke-virtual {p0, v1}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStatusDesc:Landroid/widget/TextView;

    const v1, 0x7f100095

    invoke-virtual {p0, v1}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/StatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "extra":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 151
    .local v2, "time":J
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 152
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 154
    :cond_3
    nop

    .line 155
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 154
    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v4

    .line 155
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, "timeStr":Ljava/lang/String;
    const v6, 0x7f100098

    invoke-virtual {p0, v6}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .end local v4    # "timeStr":Ljava/lang/String;
    .local v1, "timeStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStatusMsg:Landroid/widget/TextView;

    const v6, 0x7f10001f

    invoke-virtual {p0, v6}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v4, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStatusDesc:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    sput-boolean v5, Lcom/example/deeptesting/activity/MainActivity;->mApplyRecord:Z

    .line 160
    goto :goto_0

    .line 195
    .end local v0    # "extra":Ljava/lang/String;
    .end local v1    # "timeStr":Ljava/lang/String;
    .end local v2    # "time":J
    :cond_4
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mStatusMsg:Landroid/widget/TextView;

    const v1, 0x7f10001e

    invoke-virtual {p0, v1}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    nop

    .line 210
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3f5
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3ec
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 214
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 219
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/StatusActivity;->finish()V

    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method public showProgressDialog()V
    .locals 3

    .line 223
    new-instance v0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity;->mProgressDialog:Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    .line 224
    const v0, 0x7f10009b

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/deeptesting/activity/StatusActivity;->mProgressDialog:Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v1, p0, Lcom/example/deeptesting/activity/StatusActivity;->mProgressDialog:Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->show()V

    .line 227
    iget-object v1, p0, Lcom/example/deeptesting/activity/StatusActivity;->mProgressDialog:Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->setCancelable(Z)V

    .line 228
    return-void
.end method
